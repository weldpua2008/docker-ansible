# Dockerfile for building Ansible image for Ubuntu 14.04 (Trusty LTS), with as few additional software as possible.
FROM ubuntu:14.04

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>
RUN echo "===> Updating cache..." && \
    apt-get update && \
    \
    \    
    echo "===> Installing sudo..."  && \
    apt-get install -y  sudo && \
    \
    \
    apt-get install python-pip python-dev -y && \
    apt-get install python-apt -y -q && \
    \
    \
    echo "===> Installing Ansible 1.9.4..." && \
    pip install --upgrade ansible==1.9.4  && \
    \
    \
    echo "===> Adding hosts for convenience..."  && \
    mkdir -p /etc/ansible && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts && \
    apt-get clean

CMD ["/bin/bash"]