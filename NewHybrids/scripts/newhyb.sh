#!/bin/bash

newhybsng -d ang_bal_tri_296ind_375snp_zs.newhybrids -c classes --burn-in 100000 --num-sweeps 100000 -s 4002 3259 --no-gui --print-traces Pi 5 2>&1 | tee seed_4002_3259.log
