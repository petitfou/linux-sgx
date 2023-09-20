#!/bin/bash

# build for Ubuntu 23.10

# DEB repo (jammy support):
# https://download.01.org/intel-sgx/sgx_repo/ubuntu

# SDK : dev SDK
# PSW : SGX Platform Software 

make preparation

make deb_psw_pkg
# there can be some compilation problems (uint8 and -Woverloaded-virtual=)
# have to include <cstdint> and add CFLAGS options into some Makefile

# build local repo
#sudo apt install reprepro
#make deb_local_repo
# there will be an error because we are on mantic: Cannot find definition of distribution 'mantic'!
