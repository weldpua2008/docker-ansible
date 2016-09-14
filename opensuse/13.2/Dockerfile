# Dockerfile for building Ansible image for OpenSuSe 13.2, with as few additional software as possible.
FROM opensuse:13.2

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>




RUN echo "===> Update cache..."		  && \
    zypper --non-interactive up       && \

    \
    \
    echo "===> Install pip..."           && \
    zypper --non-interactive install python python-devel python-pip gcc libyaml-devel && \
    \
    \
    zypper install -y libffi-devel  libopenssl-devel && \
    \
    \
    echo "===> Adding hosts for convenience..."    && \
    mkdir -p /etc/ansible                          && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts &&\
    \
    \
    echo "===> Installing Ansible vv2.1.1.0-1..."   && \
    pip install --upgrade ansible==v2.1.1.0-1 && \
    \
    \
    \
    echo "===> Installing Sudo..."     && \
    zypper --non-interactive install sudo           && \
    \
    \
    echo "===> Disabling sudo 'requiretty' setting..."    && \
    sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers   && \
    \
    \
    echo "===> zypper clean..."     && \
    zypper clean -a && \
    \
    \
     rm -Rf ~/.pip/cache/


CMD ["/bin/bash"]
