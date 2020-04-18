#!/bin/sh

source /opt/intel/inteloneapi/setvars.sh

sample=$1

mkdir build

cd build

cmake ../ -DSAMPLE_NAME=$sample 

make 

./$sample
