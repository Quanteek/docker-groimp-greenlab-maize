#!/bin/bash

# Set default parallel numbers
if [ -z "$3" ]
then
    parallel=4
else
    parallel=$3
fi
rm p_* y_*
# split input file
split -l2 $1 p_
NPROC=0
for i in $(ls p_*)
do
    echo "running rscript with $i"
    java -jar /home/user01/GroIMP-1.4.2/app/core.jar --headless $i ./y_$i "maize_greenlab.gsz"  > /dev/null 2>&1 &
    NPROC=$(($NPROC+1))
    if [ "$NPROC" -ge $parallel ]
    then
	wait
	NPROC=0
    fi
done
wait

cat y_* > $2


