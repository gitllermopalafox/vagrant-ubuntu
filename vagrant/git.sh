#!/bin/sh

if [ ! -f /usr/bin/git ];
then
    echo "installing git"

    apt-get install -y --force-yes git-core

    # Hack for 22 output blocked !
    git config --system url."https://".insteadOf git://
fi
