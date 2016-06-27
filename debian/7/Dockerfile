# Dockerfile for building Ansible image for Debian 7 (wheezy), with as few additional software as possible.

FROM debian:wheezy

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>


RUN echo "===> Installing python, sudo, and supporting tools..."  && \
    apt-get update  && \
    DEBIAN_FRONTEND=noninteractive         \
    apt-get install -y                     \
        python python-yaml sudo            \
        curl gcc python-pip python-dev  && \
    \
    \
    echo "===> Installing Ansible 2.1.0.0..."   && \
    pip install ansible==2.1.0.0               && \
    \
    \
    echo "===> Removing unused APT resources..."                       && \
    apt-get -f -y --auto-remove remove curl gcc python-pip python-dev  && \
    apt-get clean                                                      && \
    rm -rf /var/lib/apt/lists/*  /tmp/*                                && \
    \
    \
    echo "===> Adding hosts for convenience..."        && \
    mkdir -p /etc/ansible                              && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts

CMD ["/bin/bash"]
