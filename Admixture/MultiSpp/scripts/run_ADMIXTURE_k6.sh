#!/bin/bash
#SBATCH -t 168:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=20G
#SBATCH -J multsppK6
#SBATCH --mail-type=NONE

adm="/path/to/admixture/binary"
ped="~/HybridPoplar/data"
res="~/HybridPoplar/results"

mkdir $res/K6

$adm --cv=10 -B2000 -j16 -s time $ped/multispp_11794.ped 6 | tee $res/K6/multispp_11794_K6.log
