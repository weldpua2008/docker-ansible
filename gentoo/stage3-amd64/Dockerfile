# Dockerfile for building Ansible image for gentoo (stage3-amd64), with as few additional software as possible.
FROM gentoo/stage3-amd64

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>


RUN echo "===> Update cache..."		                                    && \
    emerge-webrsync -q                                                  && \

    \
    \
    echo "===> Installing Sudo..."                                      && \
    USE="-minimal" emerge --color=n --nospinner -q sudo                                && \
    \
    \
    echo "===> Installing dev-python/pip..."                            && \
    emerge --color=n --nospinner -q dev-python/pip                      && \
    \
    \
    \
    echo "===> Disabling sudo 'requiretty' setting..."                  && \
    sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers     && \
    \
    \
    echo "===> Adding hosts for convenience..."                         && \
    mkdir -p /etc/ansible                                               && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts                    &&\
    \
    \
    echo "===> Installing Ansible v1.9.2..."                            && \
    pip2.7 install ansible==1.9.2                                       && \
    \
    \
    echo "====> Cleaning space"                                         && \
    rm -r /root/.bash_history &> /dev/null                              && \
    rm -r /tmp/* &> /dev/null                                           && \
    rm -r /usr/portage &> /dev/null                                     && \
    rm -r /usr/share/doc &> /dev/null                                   && \
    rm -r /usr/share/man/?? &> /dev/null                                && \
    rm -r /usr/share/man/??_* &> /dev/null                              && \
    rm -r /var/tmp/* &> /dev/null                                       && \
    rm -r /var/log/* &> /dev/null                                       && \
    ansible --version

#    emerge app-portage/gentoolkit               && \
#    eclean distfiles                            && \
#    eclean packages

# Environment for systemd
ENV container=docker

CMD ["/bin/bash"]
# For systemd usage this changes to /usr/sbin/init
#CMD ["/usr/sbin/init"]