#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(debian10)
apt-get install gcc make libncurses-dev autoconf libneon27-gnutls-dev

# install emacs
cd /usr/local/src
curl -O http://ftp.gnu.org/gnu/emacs/emacs-27.1.tar.gz
tar zxvfp emacs-27.1.tar.gz
cd emacs-27.1
bash autogen.sh
./configure -without-x -without-selinux
make
make install
