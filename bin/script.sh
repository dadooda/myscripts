#!/usr/bin/env bash

#
# Print a typical script template.
#

echo '#!/usr/bin/env bash

'"$(sn-sp.sh)"'

'"$(strict.sh)"'

if [[ $# = 0 ]]; then
  echo "USAGE: ${SN} <args>" >&2
  echo "EXAMPLE: ${SN} xyz 123" >&2
  exit 1
fi'
