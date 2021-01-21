#!/bin/bash
#$ -q all.q
#$ -N [JOBNAME]
#$ -S /usr/bin/bash
#$ -o /home/jhjang/simplessd-standalone/qout/
#$ -e /home/jhjang/simplessd-standalone/qout/
#$ -j y
#$ -V
#$ -l h_vmem=[MEMORY REQUIREMENT]
# run bash script below

SIMPATH=/home/kangsk/gitrepo/simplessd_standalone

SIMCONFIG=$SIMPATH/config/sample.xml
SSDCONFIG=$SIMPATH/simplessd/config/sample.xml

cd $SIMPATH
rm -rf result

RUNNAME=sample
mkdir -p $SIMPATH/result/$RUNNAME
./build/simplessd-standalone $SIMCONFIG $SSDCONFIG $SIMPATH/result/$RUNNAME