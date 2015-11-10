#!/bin/bash

#SBATCH -A snic2014-3-56
#SBATCH -t 02:00:00
#SBATCH -p node -n 16
          
module load openmpi/1.6.5 
module load bioinfo-tools
module load blast/2.2.29+
export PATH=$PATH:/home/hannesh/SUPERSMART/tools/bin/
export PATH=$PATH:/home/hannesh/SUPERSMART/src/supersmart/script

sh script/generate-simdata.sh $1

echo "DONE"
