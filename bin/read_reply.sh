#!/usr/bin/env bash

#
# Print examples of how to read input in Bash.
#

echo 'DFL="Y"; read -ep "Run above command? [$DFL]: "
REPLY=${REPLY:-$DFL}
[ "${REPLY,,}" = "y" ] || exit 0'
