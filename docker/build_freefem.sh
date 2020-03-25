#!/bin/bash
set -ex

cd FreeFem-sources
autoreconf -i
./configure --enable-download --enable-optim
3rdparty/getall -a
make -C 3rdparty/ff-petsc petsc-slepc SUDO=sudo SUDO_USER=root
./reconfigure
make -j 2
