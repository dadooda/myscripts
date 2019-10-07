#!/usr/bin/env bash

#
# Print script name & path detection code.
#

echo '# Get script name & path.
SN=${0##*/}
SP=${0%/*}'
