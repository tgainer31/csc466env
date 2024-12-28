#!/bin/bash

# setup code server
curl -fsSL https://code-server.dev/install.sh | sh
#mkdir -p /root/.config/code-server/ 
#cp /build/code-server/config.yaml /root/.config/code-server/config.yaml
#mkdir -p /root/.local/share/code-server/User/ && \
#cp /build/code-server/settings.json /root/.local/share/code-server/User/ 

# setup Python packages
source /opt/env/python3/bin/activate
pip install numpy matplotlib jupyter 
pip install jupyter-book mkdocs-material markdown-include mkdocs-table-reader-plugin   

cp /build/entrypoint.sh /usr/local/bin/entrypoint.sh
chmod 755 /usr/local/bin/entrypoint.sh  
