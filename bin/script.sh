#!/usr/bin/env bash

#
# Print a typical script template.
#

echo '#!/usr/bin/env bash

'"$(sn-sp.sh)"'

'"$(strict.sh)"'

if [[ $# = 0 ]]; then
  echo >&2
  echo "The Mighty Script"
  echo >&2
  echo "USAGE: ${SN} <args>" >&2
  echo "EXAMPLE: ${SN} xyz 123" >&2
  echo >&2
  exit 1
fi'
