#!/bin/bash
#SBATCH -t 168:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=20G
#SBATCH -J multsppK8
#SBATCH --mail-type=NONE

adm="/path/to/admixture/binary"
ped="~/HybridPoplar/data"
res="~/HybridPoplar/results"

mkdir $res/K8

$adm --cv=10 -B2000 -j16 -s time $ped/multispp_11794.ped 8 | tee $res/K8/multispp_11794_K8.log
