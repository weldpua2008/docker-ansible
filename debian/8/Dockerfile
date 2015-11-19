# Dockerfile for building Ansible image for Debian 8 (jessie), with as few additional software as possible.

FROM debian:jessie

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>




RUN echo "===> Installing python, sudo, and supporting tools..."  && \
    apt-get update  && \
    DEBIAN_FRONTEND=noninteractive          \
    apt-get install -y                      \
        python python-yaml sudo             \
        curl gcc python-pip python-dev  &&  \
    \
    \
    echo "===> Installing Ansible 1.9.3..."   && \
    pip install ansible==1.9.3                && \
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
