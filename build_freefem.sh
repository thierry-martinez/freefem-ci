#!/bin/bash
set -ex

cd FreeFem-sources
autoreconf -i
./configure --enable-download --enable-optim --prefix=$HOME/freefem
3rdparty/getall -a
make -C 3rdparty/ff-petsc petsc-slepc
./reconfigure
make -j 2
