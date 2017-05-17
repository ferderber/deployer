#!/bin/sh -
rm -rf /tmp/$2
git clone $1 \
    --depth 1 \
    /tmp/$2 \
    && cd /tmp/$2 \
    && yarn \
    && yarn run build \
    && rsync -anv /tmp/$2 $HOME/www/$3 
