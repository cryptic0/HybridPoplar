#!/bin/bash
#SBATCH -t 168:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=20G
#SBATCH -J multsppK10
#SBATCH --mail-type=ALL
#SBATCH --mail-user=vchhatre@uwyo.edu
#SBATCH --account=inbrecondo

adm="/gscratch/vchhatre/popgen/Admixture/admixture"
ped="/home/vchhatre/uvm/gbsR1/balsam_only/ang_balsam_set/Treemix/altspp/hetsites/ADMIXTURE_multispp/out_ped_24Feb2018"
res="/home/vchhatre/uvm/gbsR1/balsam_only/ang_balsam_set/Treemix/altspp/hetsites/ADMIXTURE_multispp/results"


$adm --cv=10 -B2000 -j16 -s time $ped/multispp_11794.ped 10 | tee $res/K10/multispp_11794_K10.log
