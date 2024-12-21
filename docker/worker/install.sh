#!/bin/bash

# setup Python packages
source /opt/env/python3/bin/activate
pip install numpy matplotlib 
    
cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh
