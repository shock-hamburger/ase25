#!/bin/bash

THIS_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo
gcc -v
echo

################################################################################

echo
./$EXECUTABLE $ARGS
echo

################################################################################

echo
BINARY=$EXECUTABLE $THIS_DIR/common/get_coverage.sh
echo
