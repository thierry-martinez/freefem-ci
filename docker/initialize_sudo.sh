#!/bin/bash
set -ex

apt-get install --yes sudo
adduser --disabled-password --gecos user --shell /bin/bash user
echo user ALL=\(ALL\) NOPASSWD:ALL >/etc/sudoers

# Get rid of the "setrlimit(RLIMIT_CORE): Operation not permitted" warning
# See https://bugzilla.redhat.com/show_bug.cgi?id=1773148
echo Set disable_coredump false >/etc/sudo.conf
