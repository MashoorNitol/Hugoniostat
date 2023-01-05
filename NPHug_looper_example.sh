#!/bin/bash

#final suggested runs atleast dim 150, will need to adjust pdamp accordingly.
for dim in `seq 150 25 150` ; do
for drag in `seq 0 5 0` ; do
for pdamp in `seq 20 20 20` ; do
for P in `seq 0 10 300` ; do

mpirun -np 360 ./lmp_Jan18 -sf opt -var P $P -var dim $dim -var pdamp $pdamp -var drag $drag -in in.NPHug_example_fccCu 

done
done
done
done


