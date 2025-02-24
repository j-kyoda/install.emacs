#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# required packages(debian12)
apt-get install -y curl gcc make libncurses-dev autoconf libneon27-gnutls-dev texinfo

# install emacs
cd /usr/local/src
curl -O http://ftp.gnu.org/gnu/emacs/emacs-30.1.tar.gz
tar zxvfp emacs-30.1.tar.gz
cd emacs-30.1
bash autogen.sh
./configure -without-x -without-selinux
make
make install
