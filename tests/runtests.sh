#!/usr/bin/env bash
############################
#
# Valeriy Solovyov <weldpua2008@gmail.com>
# version 0.1 <11.09.2015>
#   - init
############################
OS_TYPE=${1:-}
OS_VERSION=${2:-}
if [ "${OS_TYPE}" == "ubuntu_lts" ];then
    OS_PATH_PREFIX="ubuntu/LTS/${OS_VERSION}/"
#elif [ "${OS_TYPE}" == "centos" ];then
#    OS_PATH_PREFIX="centos/${OS_VERSION}/"
#elif [ "${OS_TYPE}" == "ubuntu" ];then
#    OS_PATH_PREFIX="ubuntu/${OS_VERSION}/"
#elif [ "${OS_TYPE}" == "fedora" ];then
#    OS_PATH_PREFIX="fedora/${OS_VERSION}/"
#elif [ "${OS_TYPE}" == "opensuse" ];then
#    OS_PATH_PREFIX="opensuse/${OS_VERSION}/"
else
    OS_PATH_PREFIX="${OS_TYPE}/${OS_VERSION}/"
    if [ ! -d  "${OS_PATH_PREFIX}" ];then
        echo "unsupported OS_TYPE: ${OS_TYPE}"
        exit 126
    fi
fi
TEMP_DOCKER_IMAGE_NAME="test_weldpua2008/${OS_TYPE}_${OS_VERSION}"
#echo ${PWD}
#ls -la ${OS_PATH_PREFIX}
echo "docker build -t ${TEMP_DOCKER_IMAGE_NAME} ${OS_PATH_PREFIX} && docker run ${TEMP_DOCKER_IMAGE_NAME} ansible --version"
#cd ..
docker build -t ${TEMP_DOCKER_IMAGE_NAME} ${OS_PATH_PREFIX}&& docker run ${TEMP_DOCKER_IMAGE_NAME} /bin/bash -c "ansible --version" && echo "success" && exit 0 || echo "failed" && exit 127
