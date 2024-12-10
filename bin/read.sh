#!/usr/bin/env bash

#
# Print Bash code.
#

echo 'DFL="Y"; read -ep "Run above command? [$DFL]: "
REPLY=${REPLY:-$DFL}
[[ ${REPLY,,} = "y" ]] || exit 0'
