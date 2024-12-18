FROM rockylinux:9.3-minimal

USER root

COPY start-worker.sh /

RUN microdnf update -y && \
    microdnf install -y python3 python3-pip && \
    microdnf install -y openmpi openmpi-devel && \
    pip install numpy pandas nltk matplotlib scikit-learn && \
     microdnf clean all
    
CMD ["/bin/bash", "/start-worker.sh"]
