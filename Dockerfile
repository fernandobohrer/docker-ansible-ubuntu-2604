FROM ubuntu:26.04

LABEL maintainer="Fernando Bohrer"

ARG DEBIAN_FRONTEND=noninteractive

ENV PIP_PACKAGES="ansible"

RUN apt-get update \
    && apt-get -y install --no-install-recommends \
        python3-pip \
        sudo \
        systemd \
    && apt-get clean \
    && rm -rf /usr/share/doc \
    && rm -rf /usr/share/man \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --break-system-packages --upgrade --ignore-installed pip
RUN pip3 install --break-system-packages $PIP_PACKAGES

RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup"]

CMD ["/lib/systemd/systemd"]
