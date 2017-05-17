#!/bin/sh -
rm -rf /tmp/$2
git clone $1 \
    --depth 1 \
    /tmp/$2 \
    && cd /tmp/$2 \
    && yarn \
    && yarn run build \
    && rsync -a /tmp/$2 /var/www/$3
