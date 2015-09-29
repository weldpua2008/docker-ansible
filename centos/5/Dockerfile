# Dockerfile for building Ansible image for CentOS 5, with as few additional software as possible.

FROM centos:5

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>

RUN yum -y install wget && \
    wget dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm && \
    rpm -ivh epel-release-5-4.noarch.rpm && \
    rm -f epel-release-5-4.noarch.rpm && \
    yum update -y && \
    yum install -y curl wget && \
    wget https://raw.githubusercontent.com/weldpua2008/python-2.7.x-on-Centos-5.x/master/install_python27.sh -O - | bash && \

    pip2.7 install ansible==1.9.2 && \
    yum clean all && \
    rm -Rf ~/.pip/cache/ && \
    find /opt/ -type f -name "ansible*"   -exec ln -s {} /usr/bin/  \;



#RUN yum -y install wget && \
#    wget dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm && \
#    rpm -ivh epel-release-5-4.noarch.rpm && \
#    rm -f epel-release-5-4.noarch.rpm && \
#    yum update -y && \
#    yum install -y curl python python-devel gcc libyaml-devel  python-setuptools && \
#    yum install -y python26-tools python26-libs python26-crypto python26-backports python26-argparse python26 python26-devel && \
#    wget https://bitbucket.org/pypa/setuptools/raw/0.8/ez_setup.py  -O - | python2.6 && \
#    easy_install-2.6 pip && \
#    pip install ansible==1.9.2 && \
#    yum clean all && \
#    rm -Rf ~/.pip/cache/

CMD [ "ansible", "--version" ]