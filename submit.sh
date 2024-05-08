#!/bin/bash
#SBATCH --job-name=weak_to_strong_replicate  # Job name
#SBATCH --output=res_%j.out  # Standard output and error log
#SBATCH --error=res_%j.err  # Standard error output log
#SBATCH --partition=next-gen # Specify partition; general* written as general
#SBATCH --mem=80G  # Job memory request
#SBATCH --time=04:00:00  # Time limit hrs:min:sec
#SBATCH --gres=gpu:1

source /home/jialingjiao/miniconda3/etc/profile.d/conda.sh
conda activate weak-to-strong-replicate

python sweep.py --model_sizes=gpt2-medium,gpt2-large --ds_name="amazon_polarity"
