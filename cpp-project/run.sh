#!/bin/sh

ls -l /
ls -l /opt/
ls -l /opt/intel/
ls -l /opt/intel/inteloneapi/

source /opt/intel/inteloneapi/setvars.sh

sample=$1

mkdir build

cd build

cmake ../ -DSAMPLE_NAME=$sample 

make 

./$sample
