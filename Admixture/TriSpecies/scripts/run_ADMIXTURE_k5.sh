#!/bin/bash
#SBATCH -t 48:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=20G
#SBATCH -J admixK5
#SBATCH --mail-type=NONE

adm="/path/to/admixture/binary"
ped="~/HybridPoplar/Admixture/TriSpecies/data"
res="~/HybridPoplar/Admixture/TriSpecies/results"

mkdir $res/K5

$adm --cv=10 -B2000 -j16 -s 43 $ped/trispecies_296ind_83835snp_12.ped 5 | tee $res/K5/trispecies_296ind_83835snp_K5.log
