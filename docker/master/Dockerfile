FROM linhbngo/csc466:base-latest AS final

USER root

COPY . /build
RUN chmod -R 755 /build/*.sh && /build/install.sh && rm -rf /build
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

