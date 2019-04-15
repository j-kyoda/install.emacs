#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS7)
yum -y install gcc make ncurses-devel autoconf gnutls-devel

# install emacs
cd /usr/local/src
curl -O http://ftp.gnu.org/gnu/emacs/emacs-26.2.tar.gz
tar zxvfp emacs-26.2.tar.gz
cd emacs-26.2
bash autogen.sh
./configure -without-x -without-selinux
make
make install
