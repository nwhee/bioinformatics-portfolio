#!/bin/bash

#SBATCH -J indexJD

#SBATCH -N 2

#SBATCH -n 16

#SBATCH -o output_%j.txt

#SBATCH -e error_%j.txt

#SBATCH -t 24:00:00

# Activate the STAR conda environment

module load anaconda3/2024.06

source activate /courses/BIOL2406.202710/shared/star_env

# Run the indexing command (customize to reflect names and locations of files)
STAR --runMode genomeGenerate --genomeFastaFiles Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa --sjdbGTFfile Homo_sapiens.GRCh38.115.gtf --runThreadN 16
