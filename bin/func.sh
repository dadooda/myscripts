#!/usr/bin/env bash

#
# Print Bash code.
#

echo '# Exit script with an optional message ($1) and line number ($2).
#
#   abort
#   abort "Some error"
#   abort "Some error" ${LINENO}
abort() {
  if [ -n "${1:-}" -a -n "${2:-}" ]; then
    echo "Abort at line ${2}: ${1}" >&2
  else
    echo "Abort: ${1:-(no message)}" >&2
  fi
  exit 1
}

# Return 0 if verbose.
is_verbose() {
  [ -n "${VERBOSE:-}" ]
}'
