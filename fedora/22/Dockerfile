# Dockerfile for building Ansible image for FedoraCore 22, with as few additional software as possible.
FROM fedora:22

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>




RUN echo "===> Update cache..."           && \
    dnf -y update                        && \
    dnf -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip && \
    \
    \
    dnf -y install @development-tools && \
    \
    pip install --upgrade pip && \

    \
    \
    echo "===> Installing Sudo..."     && \
    dnf -y install  sudo           && \
    \
    \
    dnf -y install libffi-devel  openssl-devel && \
    \
    dnf -y install python-devel && \
    \
    echo "===> Disabling sudo 'requiretty' setting..."    && \
    sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers   && \
    \
    \
    dnf clean all                                  && \
    \
    \
    echo "===> Adding hosts for convenience..."    && \
    mkdir -p /etc/ansible                          && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts &&\
    \
    \
    echo "===> Installing Ansible vv2.1.1.0-1..."   && \
    pip install --upgrade ansible==v2.1.1.0-1 &&\
    pip install --upgrade ansible==v2.1.1.0-1


# Environment for systemd
ENV container=docker

CMD ["/bin/bash"]
# For systemd usage this changes to /usr/sbin/init
#CMD ["/usr/sbin/init"]