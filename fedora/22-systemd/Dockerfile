# Dockerfile for building Ansible image for FedoraCore 22 with SystemD, with as few additional software as possible.
FROM fedora:22

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>




RUN echo "===> Update cache..."		  && \
     dnf -y update                        && \

    \
    \
    dnf -y install systemd; dnf clean all;  \
    (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
    rm -f /lib/systemd/system/multi-user.target.wants/*;\
    rm -f /etc/systemd/system/*.wants/*;\
    rm -f /lib/systemd/system/local-fs.target.wants/*; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
    rm -f /lib/systemd/system/basic.target.wants/*;\
    rm -f /lib/systemd/system/anaconda.target.wants/*;  \
    \
    \
    echo "===> Update cache..."           && \
    dnf -y update                        && \
    dnf -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip && \
    \
    \
    dnf install -y libffi-devel  openssl-devel && \
    \
    \
    pip install --upgrade pip && \

    \
    \
    echo "===> Installing Sudo..."     && \
    dnf -y install  sudo           && \
    \
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
    echo "===> Installing Ansible v2.0.1.0..."   && \
    pip install --upgrade ansible==2.0.1.0 &&\
    pip install --upgrade ansible==2.0.1.0

VOLUME [ "/sys/fs/cgroup", "/run", "/tmp"]

# Environment for systemd
ENV container=docker

#CMD ["/bin/bash"]
# For systemd usage this changes to /usr/sbin/init
CMD ["/usr/sbin/init"]