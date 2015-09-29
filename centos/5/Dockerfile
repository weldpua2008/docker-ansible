# Dockerfile for building Ansible image for CentOS 5, with as few additional software as possible.

FROM centos:5

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>

RUN yum -y install wget && \
    wget dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm && \
    rpm -ivh epel-release-5-4.noarch.rpm && \
    rm epel-release-5-4.noarch.rpm && \
    yum update -y && \
    yum install -y python python-pip python-devel gcc libyaml-devel && \
    pip install ansible==1.9.2 && \
    yum clean all && \
    rm -Rf ~/.pip/cache/