#!/bin/bash

#SBATCH -J sde_gan_test
#SBATCH -o run_logs/job.o%j
#SBATCH -e run_logs/job.e%j
#SBATCH -p gh
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 05:00:00
#SBATCH --mail-type=all
#SBATCH --mail-user=briankim31415@gmail.com
#SBATCH -A CCR25007

module load gcc cuda python3
source ./sde_test/bin/activate
python3 examples/sde_gan.py