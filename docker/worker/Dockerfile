FROM rockylinux:9.3-minimal

USER root

COPY start-worker.sh /

RUN microdnf update -y && \
    microdnf install -y python3 python3-pip && \
    pip install numpy pandas nltk matplotlib scikit-learn
    
CMD ["/bin/bash", "/start-worker.sh"]
