# Dockerfile for building Ansible image for Alpine 3.2, with as few additional software as possible.

FROM alpine:3.2

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>

RUN echo "===> Adding Python runtime..."  && \
    apk --update add python py-pip openssl ca-certificates               && \
    apk --update add --virtual build-dependencies python-dev build-base  && \
    pip install --upgrade pip                                            && \
    \
    \
    echo "===> Installing Ansible...1.9.4"  && \
    pip install ansible==1.9.4              && \
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
