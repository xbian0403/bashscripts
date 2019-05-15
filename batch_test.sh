#!/bin/bash

# Example: run myexample.tsk with argument --gtest_filter=Test.TestABCSuccess 1000 times
# ./batch_test.sh 1000 myexample.tsk --gtest_filter=Test.TestABCSuccess >/dev/null


times=$1
# get the command and it's argument as a whole
command=${@:2}

echo "Running: " $command;

for i in $(seq 1 $times);
do
    eval $command;
done
