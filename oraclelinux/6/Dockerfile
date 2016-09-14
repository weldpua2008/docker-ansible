# Dockerfile for building Ansible image for Oracle Linux 6, with as few additional software as possible.
FROM oraclelinux:6

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>


RUN echo "===> Installing EPEL..."        && \
    rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm   && \
    \
    \
    echo "===> Update cache..."		  && \
    yum -y update                        && \
    \
    \
    yum install gcc glibc glibc-common -y && \
    \
    \
    echo "===> Installing Dev Tools..."        && \
    yum -y groupinstall  "Development Tools"   && \
    \
    \
    \
    yum install -y PyYAML libyaml python-babel python-crypto python-simplejson python-paramiko python-pip python-crypto python-httplib2  python-jinja2  python-keyczar python-pyasn1 python-devel && \
    \
    \
    yum install -y libffi-devel  openssl-devel && \
    \
    \
    pip install --upgrade pip && \
    \
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
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts &&\
    \
    \
    echo "===> Installing Ansible vv2.1.1.0-1..."   && \
    pip install --upgrade ansible==v2.1.1.0-1        && \
    yum erase -y python-paramiko python-crypto&& \
    yum install -y python-paramiko python-crypto && \
    pip install --upgrade ansible==v2.1.1.0-1 && \
    yum erase python-keyczar python-crypto pyasn1 -y

# default command: display Ansible version
#CMD [ "ansible-playbook", "--version" ]

CMD ["/bin/bash"]

