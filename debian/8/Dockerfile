# Dockerfile for building Ansible image for Debian 8 (jessie), with as few additional software as possible.

FROM debian:jessie

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>




RUN echo "===> Installing python, sudo, and supporting tools..."  && \
    apt-get update  && \
    DEBIAN_FRONTEND=noninteractive          \
    apt-get install -y                      \
        python python-yaml sudo              \
        curl gcc python-pip python-dev  &&  \
    \
    apt-get install libssl-dev libffi-dev python-setuptools -y && \
    \
    pip install --upgrade cffi && \
    \
    echo "===> Installing Ansible v2.1.1.0-1 .."   && \
    pip install ansible==v2.1.1.0-1                && \
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
