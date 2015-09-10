# Dockerfile for building Ansible image for CentOS 7, with as few additional software as possible.
FROM centos:centos6

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>


RUN echo "===> Update cache..."		  && \
     yum -y update                        && \
    \
    \
    echo "===> Update cache..."           && \
    yum -y update                        && \
    \
    \
    yum install gcc glibc glibc-common  -y && \
    \
    \
    echo "===> Installing Dev Tools..."        && \
    yum -y groupinstall  "Development Tools"   && \
    \
    \
    echo "===> Installing EPEL..."        && \
    yum -y install epel-release           && \
    \
    \
    yum install -y PyYAML libyaml python-babel python-crypto python-simplejson python-paramiko python-pip python-crypto python-httplib2  python-jinja2  python-keyczar python-pyasn1 python-devel && \
    \
    \
    pip install --upgrade pip && \


    echo "===> Installing EPEL..."        && \
    yum -y install epel-release           && \
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
    echo "===> Removing unused YUM resources..."   && \
    yum -y remove epel-release                     && \
    yum clean all                                  && \
    \
    \
    echo "===> Adding hosts for convenience..."    && \
    mkdir -p /etc/ansible                          && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts

# Environment for systemd
ENV container=docker

# default command: display Ansible version
#CMD [ "ansible-playbook", "--version" ]

# Volumes for systemd
VOLUME ["/run", "/tmp"]

#CMD ["/bin/bash"]
# For systemd usage this changes to /usr/sbin/init
CMD ["/usr/sbin/init"]

