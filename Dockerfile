FROM ubuntu:26.04

# tiny is a very handy small service to keep your container alive
# without all the overhead from systemd
RUN apt-get update && apt-get install -y tini && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install prerequisites
RUN apt-get update && apt-get install \
    sudo \
    git \
    jq \
    curl \
    zsh \
    -y

# make zsh your default shell
RUN chsh root --shell /bin/zsh

ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["sleep", "infinity"]