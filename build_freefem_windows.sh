#!/usr/bin/bash
set -ex

export PATH="/usr/local/bin:/usr/bin:/opt/bin:$PATH"
exec ./build_freefem.sh
