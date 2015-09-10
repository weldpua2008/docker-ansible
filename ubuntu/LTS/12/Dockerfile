# Dockerfile for building Ansible image for CentOS 7, with as few additional software as possible.
FROM ubuntu:12.04

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
    apt-get install python-setuptools -y && \
    apt-get install    build-essential -y && \
    apt-get install ansible -y && \
    apt-get remove ansible --purge  -y && \
    apt-get install python-dev python2.7-dev python-pip -y && \
    apt-get install --reinstall python-pkg-resources -y && \
    easy_install --upgrade pip && \
    easy_install --upgrade ansible && \
    \
    \
    echo "===> Installing Ansible 1.9.2..." && \
    pip install --upgrade ansible==1.9.2  && \
    \
    \
    echo "===> Adding hosts for convenience..."  && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts

CMD ["/bin/bash"]