#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS7)
yum -y install gcc make ncurses-devel

# install emacs
cd /usr/local/src
curl -O http://ftp.gnu.org/gnu/emacs/emacs-25.3.tar.gz
tar zxvfp emacs-25.3.tar.gz
cd emacs-25.3
./configure -without-x -without-selinux
make
make install
