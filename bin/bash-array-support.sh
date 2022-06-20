#!/usr/bin/env bash

#
# Print Bash code.
#

echo '# Check for array support.
_TEST=(0 1 2); if [ "${_TEST[1]}" != "1" ]; then
  echo "Your Bash version has no array support: $BASH_VERSION" >&2
  exit 1
fi'
