#!/bin/bash
times=$1
command=${@:2}
echo "Running: " $command;
for i in $(seq 1 $times);
do
    eval $command;
done
