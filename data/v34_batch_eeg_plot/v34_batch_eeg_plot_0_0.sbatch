#!/bin/bash
#SBATCH --job-name=v34_batch_eeg_plot_0_0
#SBATCH -A icei_H_King
#SBATCH -t 04:00:00
#SBATCH --partition=g100_usr_prod
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH -o ../data/v34_batch_eeg_plot/v34_batch_eeg_plot_0_0.run
#SBATCH -e ../data/v34_batch_eeg_plot/v34_batch_eeg_plot_0_0.err
#SBATCH --mail-user=poulami.ghosh@bccn-berlin.de
#SBATCH --mail-type=end


source ~/.bashrc
cd /g100/home/userexternal/pghosh01/macaque_auditory_model/model
srun -n 32 nrniv -python -mpi init.py simConfig=../data/v34_batch_eeg_plot/v34_batch_eeg_plot_0_0_cfg.json netParams=../data/v34_batch_eeg_plot/v34_batch_eeg_plot_netParams.py
wait
    