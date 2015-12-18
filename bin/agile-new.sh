#!/bin/bash
# Agile-Diamond
# http://diamond-methods.org/agile-diamond.html

# source $HOME/.agile-diamond

SKEL_TYPE=$1
DESTINATION=$2

echo "Usage: agile-new.sh [type] [name]"
echo
echo "available types:"
echo
echo "- software"
echo

if [[ "${SKEL_TYPE}" == "software" ]]; then
    echo "create project '${DESTINATION}'"
    mrbob -w "${VIRTUAL_ENV}/share/skels/agile-software" -O "${DESTINATION}"
fi
