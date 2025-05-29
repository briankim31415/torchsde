#!/bin/bash

#SBATCH -J sde_gan_test
#SBATCH -p gh
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH --mail-type=all
#SBATCH --mail-user=briankim31415@gmail.com
#SBATCH -A CCR25007

module load gcc cuda/12.6 python3
source ./sde_test/bin/activate
python brian_testing/sde_gan_configs