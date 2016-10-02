#!/bin/bash

SUDO_PREFIX="sudo"
if [ "$(whoami)" == "root" ] ; then
    SUDO_PREFIX=""
fi

KERNEL_REL="$(uname -r)"

if [ "$(which apt-get)" ] ; then
    ${SUDO_PREFIX} apt-get install -yq linux-source
    ${SUDO_PREFIX} apt-get install -yq linux-image-${KERNEL_REL}-dbgsym
    ${SUDO_PREFIX} apt-get install -yq systemtap
fi



