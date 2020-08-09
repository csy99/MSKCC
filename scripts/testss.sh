#!/bin/bash
#BSUB -J model201_merge
#BSUB -n 32
#BSUB -R span[ptile=72]
#BSUB -R rusage[mem=8]
#BSUB -W 10:00
#BSUB -o ./output/model201_merge.stdout
#BSUB -eo ./output/model201_merge.stderr

./starspace test \
 -testFile ./data/rna_lpc30.txt \
 -model ./models/model7_merge \
 -predictionFile ./models/v1.txt \
 -label "#" \
 -ngrams 5 \
 -verbose true \
 -thread 32