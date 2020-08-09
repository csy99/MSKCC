#!/bin/bash
#BSUB -J model101_rna
#BSUB -n 32
#BSUB -R span[ptile=72]
#BSUB -R rusage[mem=4]
#BSUB -W 2:00
#BSUB -o ./output/model101_rna.stdout
#BSUB -eo ./output/model101_rna.stderr

./starspace train \
 -trainFile ./data/p0_rna_lpc30.txt \
 -model ./models/model101_rna \
 -label "#" \
 -ngrams 5 \
 -lr 0.1 \
 -dim 20 \
 -epoch 50 \
 -initRandSd 0.01 \
 -useWeight true \
 -thread 32 \
 -verbose true