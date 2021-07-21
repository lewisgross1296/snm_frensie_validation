#!/bin/sh
#SBATCH --partition=pre
#SBATCH --time=1-00:00:00 
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=5
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=600
#SBATCH --error=snm_%J.err
#SBATCH --output=snm_%J.out
#SBATCH --exclude=hpc[109-112,117-136,141-168,193-208,213-256,265-292,301-316,325-332]
# exclude nodes  to try and target hardware with AVX2 ISA


# build command
# FIRST LOG INTO AN INTERACTIVE NODE
# srun -n1 -N1 -p int --pty bash
# need to do these first only ond3
# unset HTTPS_PROXY
# unset http_proxy
# singularity build frensie_hpc.simg docker://ligross/frensie_hpc:frensie_stable 
module load openmpi
mpirun -np $SLURM_NTASKS singularity exec frensie_hpc.simg python snm.py --sim_name="snm" --num_particles=1e11 --threads=$SLURM_CPUS_PER_TASK --db_path=/home/simulator/data/database.xml
# -np $SLURM_NTASKS has mpi create $SLURM_NTASKS copies of the program and MPI handles the data;
# transfering between nodes and the process 0 node 

###############################################################################
# RESOURCE EXPLANATION
# --nodes=2 #how many nodes, each containing 20 cpus do you want
# --ntasks-per-node=5
# --cpus-per-task=4 # need cpus per task * ntasks per node needs to be 20 (or as close but under 20 as possible) so that we don't waste any threads/cpus (20 threads per core)