#!/bin/sh -
rm -rf /tmp/$2
git clone $1 \
    --depth 1 \
    /tmp/$2 \
    && cd /tmp/$2 \
    && yarn \
    && yarn run build \
    && rsync -a --delete /tmp/$2/dist /var/www/$3 \
    && mv /var/www/$3/dist /var/www/$3/$2
