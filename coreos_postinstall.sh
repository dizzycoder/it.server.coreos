#!/bin/bash

#https://raw.githubusercontent.com/dizzycoder/it.server.coreos/master/coreos_postinstall.sh

echo "fun" > ~/post_install.log

exit 1

cd
wget https://raw.githubusercontent.com/varasys/corezfs/master/corezfs && chmod +x ./corezfs && sudo ./corezfs install

# at this point it may fail on cleanup of the build files as it did for me, but running the next command finished everything up
sudo ./corezfs install corezfs_amd64-usr # hit tab ....

## put this into a file called toolboxrc
# TOOLBOX_DOCKER_IMAGE=ragnarb/toolbox
# TOOLBOX_CMD="$@"
# TOOLBOX_BIND="--bind=/dev:/dev --bind=/var/run/docker.sock:/docker/docker.sock --bind=/:/media/root/ --bind=/var/:/media/root/var/ --bind=/home:/media/root/home/ $TOOLBOX_CMD"

# if [ -z "$TOOLBOX_PROVISIONED" ]; then
#     export TOOLBOX_PROVISIONED=1
#     test -z "$TOOLBOX_CMD" && TOOLBOX_CMD=zsh
#     exec /usr/bin/toolbox $TOOLBOX_BIND
# fi
