FROM linhbngo/csc466:base-latest AS final

USER student

COPY . /home/student/build
RUN chmod -R 755 /home/student/build/*.sh && /home/student/build/install.sh && rm -rf /home/student/build
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

