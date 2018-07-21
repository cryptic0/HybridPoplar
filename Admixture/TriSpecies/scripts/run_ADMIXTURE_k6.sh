#!/bin/bash
#SBATCH -t 48:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=20G
#SBATCH -J admixK6
#SBATCH --mail-type=NONE

adm="/path/to/admixture/binary"
ped="~/HybridPoplar/Admixture/TriSpecies/data"
res="~/HybridPoplar/Admixture/TriSpecies/results"

mkdir $res/K6

$adm --cv=10 -B2000 -j16 -s 43 $ped/trispecies_296ind_83835snp_12.ped 6 | tee $res/K6/trispecies_296ind_83835snp_K6.log
