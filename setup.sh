#!/bin/bash

SUDO_PREFIX="sudo"
if [ "$(whoami)" == "root" ] ; then
    SUDO_PREFIX=""
fi

INSTALL_CMD="yum"
KERNEL_REL="$(uname -r)"

if [ "$(which apt-get)" ] ; then
    INSTALL_CMD="apt-get"
fi

${SUDO_PREFIX} ${INSTALL_CMD} install -yq linux-source
${SUDO_PREFIX} ${INSTALL_CMD} install -yq linux-image-${KERNEL_REL}-dbgsym
${SUDO_PREFIX} ${INSTALL_CMD} install -yq systemtap

