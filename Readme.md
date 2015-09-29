[![dockeri.co](http://dockeri.co/image/weldpua2008/docker-ansible)](https://hub.docker.com/r/weldpua2008/docker-ansible/)

[![GitHub issues](https://img.shields.io/github/issues/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/issues) [![GitHub forks](https://img.shields.io/github/forks/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/network) [![GitHub stars](https://img.shields.io/github/stars/weldpua2008/docker-ansible.svg)](https://github.com/weldpua2008/docker-ansible/stargazers) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/weldpua2008/docker-ansible/master/LICENSE) 


docker-ansible
===================
These are base docker images that include Ansible.  

 * [![Ansible 1.9.2 Build Status](https://travis-ci.org/weldpua2008/docker-ansible.svg?branch=ansible_1.9.2)](https://travis-ci.org/weldpua2008/docker-ansible)



Requirements
=====================================

* docker

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

The following OS are aviable:
* alpine
  * 3.2
* centos
  * 5
  * 6
  * 7
* debian 
  * 8
* fedora
  * 22
  * 21
* opensuse
  * 13.2
* ubuntu
  * 14.04
  * 12.04
  * 15.04
  * 15.10
  
  
The following Ansible versions are aviable:
* 1.9.2

Example with Centos 7 and Ansible 1.9.2
    
    FROM weldpua2008/docker-ansible:`centos7`_v`1.9.2`
    
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