#!/bin/sh -
rm -rf /tmp/$2
git clone $1 \
    --depth 1 \
    /tmp/$2 \
    && rsync -a --delete /tmp/$2 $HOME/apps \
    && cd $HOME/apps/$2 \
    && yarn \
    && pm2 restart $2
