#!/bin/bash
set -e

microdnf update -y
microdnf install -y \
    openssh-server \
    sudo \
    epel-release \
    wget \
    vim \
    openldap-clients \
    sssd \
    sssd-tools \
    authselect \
    openssl \
    bash-completion \
    curl \
    python3 \
    python3-pip \
    python3-devel \
    tar \
    perl

# install OpenMPI

cd /build
tar xzf openmpi-5.0.6.tar.gz
cd openmpi-5.0.6
./configure --prefix=/opt/openmpi/5.0.6
make all
make install
echo "export OPENMPI_ROOT=/opt/openmpi/5.0.6" >> /etc/profile
echo "export PATH=$PATH:/opt/openmpi/5.0.6/bin" >> /etc/profile
echo "export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/openmpi/5.0.6/include" >> /etc/profile

python3 -m venv /opt/env/python3
source /opt/env/python3/bin/activate
pip install numpy matplotlib

export OPENMPI_ROOT=/opt/openmpi/5.0.6
export PATH=$PATH:/opt/openmpi/5.0.6/bin
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${OPENMPI_ROOT}/include:${OPENMPI_ROOT}/lib
pip install mpi4py

ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
    
cat > /root/.ssh/config <<EOF
Host *
   StrictHostKeyChecking no
   UserKnownHostsFile /dev/null
EOF
chmod 0600 /root/.ssh/config

microdnf clean all
rm -rf /var/cache/dnf