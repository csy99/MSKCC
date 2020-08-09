#!/bin/bash
#BSUB -J model101_merge
#BSUB -n 32
#BSUB -R span[ptile=72]
#BSUB -R rusage[mem=4]
#BSUB -W 4:00
#BSUB -o ./output/model101_merge.stdout
#BSUB -eo ./output/model101_merge.stderr

./starspace train \
 -trainFile ./data/p0_merge_v1.txt \
 -model ./models/model101_merge \
 -label "#" \
 -ngrams 5 \
 -lr 0.3 \
 -dim 20 \
 -epoch 100 \
 -initRandSd 0.01 \
 -useWeight true \
 -thread 32 \
 -verbose true