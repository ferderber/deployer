#!/bin/sh -
rm -rf /tmp/$2
git clone $1 \
    --depth 1 \
    /tmp/$2 \
    && cd /tmp/$2 \
    && yarn --production=false \
    && yarn run build \
    && mkdir -p /var/www/$3/$2 \
    && rsync -a --delete /tmp/$2/dist/ /var/www/$3/$2
