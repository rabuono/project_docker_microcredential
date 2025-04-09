#!/bin/bash
#SBATCH --job-name=<train>
#SBATCH --partition=gp_64C_128T_512GB
#SBATCH --mem=8G
#SBATCH --time=0-1:00

#Ask for path in command
export SINGULARITY_CACHEDIR=$1

# Commands to execute
apptainer exec skelearn_train_v2.sif 

#To Do
# Missing second argument
