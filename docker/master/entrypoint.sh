#!/bin/bash

echo "---> Starting sshd on the slurmd..."
sudo /usr/sbin/sshd -e

cp -R /opt/home/student /home/student  
cd /home/student/

jupyter lab --port=8888 --NotebookApp.token='' --no-browser --ip=0.0.0.0 &
code-server --bind-addr 0.0.0.0:8088

