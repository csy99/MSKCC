#!/bin/bash
#BSUB -J cellspace200
#BSUB -n 20
#BSUB -R span[ptile=72]
#BSUB -R rusage[mem=4]
#BSUB -W 1:00
#BSUB -o ./output/cellspace200.stdout
#BSUB -eo ./output/cellspace200.stderr

./CellSpace train \
./v1_adult_brain/v1_dna_t.counts.mtx \
./ref_seq \
./v1_adult_brain/peaks.bed \
./v1_adult_brain/barcodes.tsv \
./output/v1_dna_lpp15.txt \
-nt 20 -k 8 -sd 30 -sl 50 -lpp 15