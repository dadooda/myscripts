#!/usr/bin/env bash

#
# Print Bash code.
#

echo '_ENV_FN=$(realpath ${BASH_SOURCE}); alias envedit="${EDITOR} ${_ENV_FN}; . ${_ENV_FN}"'
