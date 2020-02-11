#!/usr/bin/env bash

#
# Print Bash code.
#

echo '# Return 0 if verbose.
is_verbose() {
  [ -n "${VERBOSE:-}" ]
}'
