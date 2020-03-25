#!/bin/bash
set -ex

sudo apt-get install --yes \
  build-essential gfortran unzip m4 bison flex patch autoconf automake git \
  wget file python2.7 mpi-default-dev
