#!/bin/bash
#SBATCH -N 1 -p gpu --gres=gpu:1 -t 1:00:00 --mem=4G

module list

set -xv

date
hostname
nvidia-smi

srun python3.4 $*

date
