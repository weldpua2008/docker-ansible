[![dockeri.co](http://dockeri.co/image/weldpua2008/docker-ansible)](https://hub.docker.com/r/weldpua2008/docker-ansible/)
[![Docker Pulls](https://img.shields.io/docker/pulls/mashape/kong.svg)](https://hub.docker.com/r/weldpua2008/docker-ansible/)
[![Docker Stars](https://img.shields.io/docker/stars/_/ubuntu.svg)](https://hub.docker.com/r/weldpua2008/docker-ansible/)
[![GitHub issues](https://img.shields.io/github/issues/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/issues) [![GitHub forks](https://img.shields.io/github/forks/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/network) [![GitHub stars](https://img.shields.io/github/stars/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/stargazers) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/weldpua2008/docker-ansible/master/LICENSE) 
[![Github Releases (by Release)](https://img.shields.io/github/downloads/atom/atom/v0.190.0/total.svg)](https://github.com/weldpua2008/docker-ansible)

docker-ansible
===================
These are base docker images that include Ansible versions:
* 1.9.2 [![Ansible 1.9.2 Build Status](https://travis-ci.org/weldpua2008/docker-ansible.svg?branch=ansible_1.9.2)](https://travis-ci.org/weldpua2008/docker-ansible)

The following OS are aviable
=============================

* [Alpine Linux](http://www.alpinelinux.org/)
  * 3.2
* [CentOS](https://www.centos.org/)
  * 5
  * 6
  * 7
* [Debian](https://www.debian.org) 
  * 8
* [Fedora](https://fedoraproject.org)
  * 22
  * 21
* [openSUSE](https://www.opensuse.org)
  * 13.2
* [Ubuntu](http://www.ubuntu.com/)
  * 14.04
  * 12.04
  * 15.04
  * 15.10
* [Oracle Linux](http://www.oracle.com/us/technologies/linux/overview/index.html)  
  * 6

Obtaining these Images from DockerHub
=====================================

Ansible, Inc content on DockerHub lives at https://hub.docker.com/r/weldpua2008/docker-ansible/

There are images available currently for CentOS and Ubuntu, using both the latest
stable version of Ansible.


Selecting Versions of Ansible
=============================
The DockerFile shown above selected the CentOS tag of Ansible's Docker images.
The first line of the DockerFile can be changed to select another base operating system or Ansible version should you wish to use a different OS or different Ansible version.
FROM weldpua2008/docker-ansible:`Os``Os_Version`_v`Ansible_Version`

Example with Centos 7 and Ansible 1.9.2
    
    FROM weldpua2008/docker-ansible:`centos7`_v`1.9.2`
    
This images on DockerHub will be updated periodically.

Requirements
=====================================
* docker


Disclaimer
=============================

This is currently a work in progress, I am not responsible and shall not
be held responsible in any manner if this tool causes loss of data, hardware
faults, act of gods, invocation of old or ancient ones, elder gods and other
horrors from the depths.

Issues
==========
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/weldpua2008/docker-ansible/issues).

Contributing
==========
You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/weldpua2008/docker-ansible/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

