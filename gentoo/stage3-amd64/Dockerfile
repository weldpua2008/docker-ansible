# Dockerfile for building Ansible image for gentoo (stage3-amd64), with as few additional software as possible.
FROM gentoo/stage3-amd64

MAINTAINER Valeriy Solovyov <weldpua2008@gmail.com>


RUN echo "===> Update cache..."		                                    && \
    emerge-webrsync                                                   && \

    \
    \
    echo "===> Installing Sudo..."                                      && \
    USE="-minimal" emerge --color=n --nospinner sudo                                && \
    \
    \
    echo "===> Installing dev-python/pip..."                            && \
    emerge --color=n --nospinner dev-python/pip                         && \
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
    echo "===> Installing Ansible v1.9.3..."                            && \
    pip2.7 install ansible==1.9.3                                       && \
    \
    \
    echo "====> Cleaning space"                                         && \
    rm -rf /root/.bash_history                               && \
    rm -rf /tmp/*                                            && \
    rm -rf /usr/portage                                      && \
    rm -rf /usr/share/doc                                    && \
    rm -rf /usr/share/man/??                                 && \
    rm -rf /usr/share/man/??_*                               && \
    rm -rf /var/tmp/*                                        && \
    rm -rf /var/log/*                                        && \
    echo "Done"

#&& \
#    ansible --version

#    emerge app-portage/gentoolkit               && \
#    eclean distfiles                            && \
#    eclean packages

# Environment for systemd
ENV container=docker

CMD ["/bin/bash"]
# For systemd usage this changes to /usr/sbin/init
#CMD ["/usr/sbin/init"]