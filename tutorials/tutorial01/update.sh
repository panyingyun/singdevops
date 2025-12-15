#!/bin/bash

# format code 
# sudo apt install python3
# sudo pip install black
# black app/hello.py

echo "hello dependence is ready."
sudo singularity build hello_v0.2.sif update.def
echo "hello image build successful."
