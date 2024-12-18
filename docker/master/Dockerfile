FROM rockylinux:9.3-minimal

USER root

ENV PIP_ROOT_USER_ACTION=ignore

COPY code-server/ /code-server
COPY start-master.sh /
COPY mkdocs/setup_mkdocs.sh /

RUN microdnf update -y && \
    microdnf install -y python3 python3-pip curl nano && \
    pip install numpy pandas nltk matplotlib scikit-learn && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /root/.config/code-server/ && \
    cp /code-server/config.yaml /root/.config/code-server/config.yaml && \
    mkdir -p /root/.local/share/code-server/User/ && \
    cp /code-server/settings.json /root/.local/share/code-server/User/ && \
    rm -Rf code-server && \
    microdnf clean all

# setup Python packages
RUN pip3 install jupyter jupyter-book && \
    pip3 install mkdocs-material markdown-include mkdocs-table-reader-plugin mkdocs-jupyter

# 8888: jupyter
# 8088: vscode-server
# 8000: mkdocs serve
EXPOSE 8888 8088 8000

CMD ["/bin/bash", "/start-master.sh"]
