# Dockerfile for building Ansible image for OpenSuSe 13.2, with as few additional software as possible.
FROM fedora:22

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>




RUN echo "===> Update cache..."		  && \
    zypper --non-interactive up       && \

    \
    \
    echo "===> Install pip..."           && \
    zypper --non-interactive install python python-devel python-pip gcc libyaml-devel && \
    \
    \
    pip install --upgrade pip && \

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
    zypper clean -a                                 && \
    \
    \
    echo "===> Adding hosts for convenience..."    && \
    mkdir -p /etc/ansible                          && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts &&\
    \
    \
    echo "===> Installing Ansible v1.9.2..."   && \
    pip install --upgrade ansible==1.9.2 &&\
    pip install --upgrade ansible==1.9.2
    # rm -Rf ~/.pip/cache/


# Environment for systemd
#ENV container=docker

CMD ["/bin/bash"]
