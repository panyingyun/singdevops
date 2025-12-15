#!/bin/bash

echo "vtk dependence is ready."
sudo singularity build vtk_v0.1.sif vtk.def
echo "vtk image build successful."
