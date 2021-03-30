#!/bin/bash
i=8
until [ $i -gt 510 ]
do
  export varname="bandstruct$i"
  export bands=$i
  echo $varname
  mpirun -n 4 jdftx -i Si.nscf.in | tee Si.nscf.$i.out
  echo i: $i
  ((i=i+20))
done
