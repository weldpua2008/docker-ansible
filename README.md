[![Docker Pulls](https://img.shields.io/docker/pulls/mashape/kong.svg)](https://hub.docker.com/r/weldpua2008/docker-ansible/)
[![Docker Stars](https://img.shields.io/docker/stars/_/ubuntu.svg)](https://hub.docker.com/r/weldpua2008/docker-ansible/)
[![dockeri.co](http://dockeri.co/image/weldpua2008/docker-ansible)](https://hub.docker.com/r/weldpua2008/docker-ansible/)

[![Build Status](https://travis-ci.org/weldpua2008/docker-ansible.svg?branch=ansible_1.9.4)](https://travis-ci.org/weldpua2008/docker-ansible) [![GitHub issues](https://img.shields.io/github/issues/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/issues) [![GitHub forks](https://img.shields.io/github/forks/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/network) [![GitHub stars](https://img.shields.io/github/stars/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/stargazers) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/weldpua2008/docker-ansible/master/LICENSE) 

docker-ansible
===================
These are base docker images that include Ansible.  

Ansible, Inc maintains these images so that people can easily build docker images from ansible playbooks.

While Ansible modules can help you deploy container images (and also prepare host dependencies to be able to run containers), this document is about how to use ansible to efficiently describe and build them as well.

Requirements
=====================================

* docker

Obtaining these Images from DockerHub
=====================================

This content on DockerHub lives at https://hub.docker.com/r/weldpua2008/docker-ansible/

There are images available currently for Fedora, Oracle Linux, CentOS, Gentoo, Alpine, Debian and Ubuntu, using the 1.9.4 version of Ansible.

Selecting Versions of Ansible
=============================
The DockerFile shown above selected the latest CentOS tag of Ansible's Docker images.
The first line of the DockerFile can be changed to select another base operating system or Ansible version should you wish to use a different OS or different Ansible version.
The following options are available:

    FROM weldpua2008/docker-ansible:`alpine3.2`_v`1.9.4`
    
    FROM weldpua2008/docker-ansible:`oraclelinux6`_v`1.9.4`
    
    FROM weldpua2008/docker-ansible:`opensuse13.2`_v`1.9.4`

    FROM weldpua2008/docker-ansible:`centos5`_v`1.9.4`
    FROM weldpua2008/docker-ansible:`centos6`_v`1.9.4`
    FROM weldpua2008/docker-ansible:`centos7`_v`1.9.4`
    
    FROM weldpua2008/docker-ansible:`ubuntu12.04`_v`1.9.4`
    FROM weldpua2008/docker-ansible:`ubuntu14.04`_v`1.9.4`
    FROM weldpua2008/docker-ansible:`ubuntu_lts12`_v`1.9.4`
    FROM weldpua2008/docker-ansible:`ubuntu_lts14`_v`1.9.4`

    FROM weldpua2008/docker-ansible:`debin7`_v`1.9.4`
    FROM weldpua2008/docker-ansible:`debin8`_v`1.9.4`

    FROM weldpua2008/docker-ansible:`fedora21`_v`1.9.4`
    FROM weldpua2008/docker-ansible:`fedora22`_v`1.9.4`
    
This images on DockerHub will be updated periodically.

Disclaimer
=============================

This is currently a work in progress, I am not responsible and shall not
be held responsible in any manner if this tool causes loss of data, hardware
faults, act of gods, invocation of old or ancient ones, elder gods and other
horrors from the depths.

Questions?
==========

If you'd like to talk about Ansible+Docker, stop by the .
