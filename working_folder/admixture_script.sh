#!/bin/bash -l

# Load modules
module load bioinfo-tools
module load ADMIXTURE/1.3.0 

for i in {2..6};
do                                                                                      
for j in {1..3};
do
admixture -s time PopStrucIn1.bed ${i} 
mv PopStrucIn1.${i}.Q PopStrucIn1.${i}.Q.${j};
mv PopStrucIn1.${i}.P PopStrucIn1.${i}.P.${j};
done
done
