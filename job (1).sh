#PBS -l nodes=1:ppn=16,mem=1gb,walltime=00:10:00
#PBS -m abe
#PBS -N ejercicio29


module load anaconda/python3
cd $PBS_O_WORKDIR # este es el directorio desde donde se ejecuto qsub
rm -f *.txt integral.x
mpicc HelloWorld.c -lm -o HelloWorld.x
