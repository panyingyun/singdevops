#!/bin/bash

echo "cpi dependence is ready."
sudo singularity build cpi_v0.2.sif cpi.def
echo "cpi image build successful."