#!/usr/bin/env bash
############################
#
# Valeriy Solovyov <weldpua2008@gmail.com>
# version 0.1 <11.09.2015>
#   - init
############################
OS_TYPE=${1:-}
OS_VERSION=${2:-}
if [ "${OS_TYPE}" == "centos" ];then
    OS_PATH_PREFIX="centos/${OS_VERSION}/"
elif [ "${OS_TYPE}" == "ubuntu_lts" ];then
    OS_PATH_PREFIX="ubuntu/LTS/${OS_VERSION}/"
elif [ "${OS_TYPE}" == "ubuntu" ];then
    OS_PATH_PREFIX="ubuntu/${OS_VERSION}/"
else
    echo "unsupported OS_TYPE: ${OS_TYPE}"
    exit 126
fi
TEMP_DOCKER_IMAGE_NAME="test_weldpua2008/${OS_TYPE}_${OS_VERSION}"


echo ${PWD}
ls -la ${OS_PATH_PREFIX}
echo "docker build -t ${TEMP_DOCKER_IMAGE_NAME} ${OS_PATH_PREFIX}"
#cd ..
docker build -t ${TEMP_DOCKER_IMAGE_NAME} ${OS_PATH_PREFIX}&& docker run --rm=true ${TEMP_DOCKER_IMAGE_NAME} /bin/bash -c "ansible --version" || echo "failed" && exit 127
