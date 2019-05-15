#!/bin/bash

times=$1
# get the command and it's argument as a whole
command=${@:2}

echo "Running: " $command;

for i in $(seq 1 $times);
do
    eval $command;
done
