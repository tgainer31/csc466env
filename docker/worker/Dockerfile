FROM linhbngo/csc466:base-latest AS final

USER root

COPY . /build
RUN /build/install.sh && rm -rf /build
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

