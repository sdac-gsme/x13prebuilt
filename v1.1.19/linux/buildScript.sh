#!/bin/bash
#
# Build script for x13ashtml
#
# Copyright (C) 2015 - 2016 Dirk Eddelbuettel
#
# Released under GPL (>= 2)

set -e
set -u

srctgz="https://www.census.gov/ts/x13as/unix/x13ashtmlsrc_V1.1_B19.tar.gz"
file=$(basename ${srctgz})

td=$(mktemp -d -p /tmp x13dirXXXXXX)
cd ${td}
wget ${srctgz}
tar xaf ${file}
make -f makefile.g77
echo ""
echo "Done in build directory ${td}"
ls -l x13ashtml
