FROM rockylinux:9.3-minimal

USER root

COPY keys /keys
COPY start-worker.sh /

EXPOSE 22

RUN microdnf update -y && \
    microdnf install -y python3 python3-pip && \
    microdnf install -y openmpi openmpi-devel && \
    pip install numpy pandas nltk matplotlib scikit-learn && \
    microdnf install -y openssh openssh-server && \
    mkdir -p /root/.ssh && \
    cp /keys/* /root/.ssh && \
    chmod -R 600 /root/.ssh && \
    chmod 644 /root/.ssh/id_rsa.pub && \
    rm -Rf /keys && \
    microdnf clean all
    
CMD ["/bin/bash", "/start-worker.sh"]

