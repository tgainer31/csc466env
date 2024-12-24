FROM rockylinux:9.3-minimal

USER root

COPY . /build
RUN chmod -R 755 /build/*.sh && /build/install.sh && rm -rf /build