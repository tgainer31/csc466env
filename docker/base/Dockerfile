FROM --platform=linux/amd64 rockylinux:9.3-minimal

USER root

COPY . /build
RUN /build/install.sh && rm -rf /build