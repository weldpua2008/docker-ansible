# Dockerfile for building Ansible image for FedoraCore 21, with as few additional software as possible.
FROM fedora:21

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>




RUN echo "===> Update cache..."		  && \
     yum -y update                        && \

    \
    \
    echo "===> Update cache..."           && \
    yum -y update                        && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip && \
    \
    \
    yum install -y libffi-devel  openssl-devel && \
    \
    \
    yum -y groupinstall "Development Tools" "Development Libraries"  && \
    pip install --upgrade pip && \

    \
    \
    echo "===> Installing Sudo..."     && \
    yum -y install  sudo           && \
    \
    \
    echo "===> Disabling sudo 'requiretty' setting..."    && \
    sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers   && \
    \
    \
    yum clean all                                  && \
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

#CMD ["/bin/bash"]
# For systemd usage this changes to /usr/sbin/init
CMD ["/usr/sbin/init"]