#!/bin/bash
#BSUB -J model101_dna
#BSUB -n 32
#BSUB -R span[ptile=72]
#BSUB -R rusage[mem=4]
#BSUB -W 4:00
#BSUB -o ./output/model101_dna.stdout
#BSUB -eo ./output/model101_dna.stderr

./starspace train \
 -trainFile ./data/p0_dna_lpp15.txt \
 -model ./models/model101_dna \
 -label "#" \
 -ngrams 5 \
 -lr 0.3 \
 -dim 20 \
 -epoch 100 \
 -initRandSd 0.01 \
 -useWeight false \
 -thread 32 \
 -verbose true