#!/bin/bash

blockMesh | tee log.blockMesh
checkMesh | tee log.checkMesh

#paraFoam -block
#echo "Press ENTER to continue..."
#read 
#echo "Resumed!"

foamRun | tee log.foamRun
foamLog log.foamRun

foamPostProcess -func sampleDict -latestTime

gnuplot plotScripts/foamRunPlot.sh
#gnuplot plotScripts/sampleDictPlot.sh

paraview cavity_revisited.foam

