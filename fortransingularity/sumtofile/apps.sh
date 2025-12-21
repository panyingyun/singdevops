#!/bin/bash

echo "apps dependence is ready."
sudo singularity build apps_v1.0.sif apps.def
echo "apps image build successful."