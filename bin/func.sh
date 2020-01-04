#!/usr/bin/env bash

#
# Print Bash miscellaneous functions.
#

echo '# Return 0 if verbose.
is_verbose() {
  [ -n "${VERBOSE:-}" ]
}'
