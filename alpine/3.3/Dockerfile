# Dockerfile for building Ansible image for Alpine 3.3, with as few additional software as possible.

FROM alpine:3.3

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>

RUN echo "===> Adding Python runtime..."  && \
    apk --update add python py-pip openssl ca-certificates                && \
    apk --update add --virtual build-dependencies python-dev build-base   && \
    apk add --update build-base libffi-dev                                && \
    apk add openssl-dev                                                   && \
    pip install --upgrade pip                                             && \
    \
    \
    echo "===> Installing Ansible...2.1.0.0"  && \
    pip install ansible==2.1.0.0              && \
    \
    \
    echo "===> Removing package list..."  && \
    apk del build-dependencies            && \
    rm -rf /var/cache/apk/*               && \
    \
    \
    echo "===> Adding hosts for convenience..."  && \
    mkdir -p /etc/ansible                        && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts

#CMD ["/bin/bash"]
CMD [ "ansible-playbook", "--version" ]
