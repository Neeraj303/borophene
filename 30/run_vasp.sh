#!/bin/sh

#SBATCH -N 9
#SBATCH --ntasks-per-node=40
#SBATCH -t 96:00:00 
#SBATCH -J 30_3_c
#SBATCH -p standard

cd $SLURM_SUBMIT_DIR
#mkdir ./tmp1
#cp INCAR KPOINTS POTCAR POSCAR tmp1
#cd tmp1
export I_MPI_FABRICS=shm:ofi
source /opt/ohpc/pub/compiler/intel/oneapi/setvars.sh intel64
ulimit -s unlimited

#srun /home/nirajd/softwares/vasp.5.4.4-vtst/bin/vasp_std 
mpiexec.hydra /home/nirajd/softwares/vasp.5.4.4-vtst/bin/vasp_std
