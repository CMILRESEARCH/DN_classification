#!/bin/bash
#!/bin/sh
#SBATCH --account=pinaki.sarder
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=16gb
#SBATCH --time=72:00:00
#SBATCH --job-name=kfold_dn_classification
#SBATCH --output=scripts/logs/kfold.log        
echo  "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST="$SLURM_JOB_NODELIST
echo "SLURM_NNODES="$SLURM_NNODEs
echo "SLURMTMPDIR="$SLURMTMPDIR
echo "working directory = "$SLURM_SUBMIT_DIR

# Load required modules (if necessary)
#module load python3  # Load Python module, adjust version as needed

# Add your userID here:
USER=varanasin
PROJECT=dn_classification
# Activate the virtual environment (if using one)
source /blue/pinaki.sarder/varanasin/dn/dn/bin/activate

# Run your Python script
python3 Glomerular_classification/Classification/Kfold_RNN.py
