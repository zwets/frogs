#!/bin/bash
#
# Note recipe from Philip says if doing assembly polishing, change to
#kma -ipe $READS_DIR/QDK21_${ID}_R{1,2}.fq.gz -o ${ID} -t_db ref.fna -mem_mode -1t1 -ca -bcg -ts 5 -cge

export LC_ALL=C
set -euo pipefail

# Weirdly jobs don't get the /hpc/bin path
PATH="/hpc/bin:$PATH"

err_exit() { echo "$(basename "$0"): $*" >&2; exit 1; }
usage_exit() { echo "Usage: $(basename "$0") DIR REF FQ1 FQ2"; exit 1; }

(( $# == 4 )) || usage_exit
DIR="$1" REF="$2" FQ1="$3" FQ2="$4"

[ ! -d "$DIR" ] || err_exit "directory exists: $DIR"
[ -f "$REF" ] || err_exit "file not found: $REF"
[ -f "$FQ1" ] || err_exit "file not found: $FQ1"
[ -f "$FQ2" ] || err_exit "file not found: $FQ2"

(( $(uf "$REF" 2>/dev/null | wc -l) == 2 )) || err_exit "reference must have 1 sequence: $REF"

mkdir "$DIR"
WORK="$DIR/work"
mkdir "$WORK"
ITER="$WORK/iter"

I=0 N1=20 N2=50

uf -u "$REF" | sed -Ee '1s/>([^ ]+).*$/>\1_mapped/' >"$ITER$I.fsa"

# Coarse mapping
while ((I < N1)); do
    kma_index -i "$ITER$I.fsa" -o "$ITER$I"
    kma -ipe "$FQ1" "$FQ2" -t_db "$ITER$I" -o "$ITER$((++I))" -Mt1 1 -ca -bcg -ts 5
    uf -u "$ITER$I.fsa" | sponge "$ITER$I.fsa"
    J=$I; while ((--J >= 0)); do
        if cmp -s "$ITER$J.fsa" "$ITER$I.fsa"; then N1=$I; break; fi
    done
done

# Preciser mapping
while ((I < N2)); do
    kma_index -i "$ITER$I.fsa" -o "$ITER$I"
    kma -ipe "$FQ1" "$FQ2" -t_db "$ITER$I" -o "$ITER$((++I))" -Mt1 1 -ca -bcg -ts 5 -cge
    uf -u "$ITER$I.fsa" | sponge "$ITER$I.fsa"
    J=$I; while ((--J >= N1)); do
        if cmp -s "$ITER$J.fsa" "$ITER$I.fsa"; then N2=$I; break; fi
    done
done

# Copy last
cp $ITER$I.* "$DIR/"
rm -rf "$WORK"

