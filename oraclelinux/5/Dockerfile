# Dockerfile for building Ansible image for Oracle Linux 6, with as few additional software as possible.
FROM oraclelinux:5

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>


RUN yum -y install wget && \
    wget dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm && \
    rpm -ivh epel-release-5-4.noarch.rpm && \
    rm -f epel-release-5-4.noarch.rpm && \
    yum update -y && \
    yum install -y curl wget && \
    wget --no-check-certificate https://raw.githubusercontent.com/weldpua2008/python-2.7.x-on-Centos-5.x/master/install_python27.sh -O - | bash && \

    pip2.7 install ansible==2.1.1.0 && \
    yum clean all && \
    rm -Rf ~/.pip/cache/ && \
    find /opt/ -type f -name "ansible*"   -exec ln -s {} /usr/bin/  \;

CMD [ "ansible", "--version" ]


