#!/bin/bash

BURST=${BURST:-500}
RATE=${RATE:-"5r/s"}
CACHE_LIFETIME=${CACHE_LIFETIME:-"60s"}
PROXY_PATH=$PROXY_PATH

if [ -z "$PROXY_PATH" ]; then
    echo "Environment variable PROXY_PATH is required, please set it to a valid URL"
    exit 1
fi

sed -e "s~\${RATE}~$RATE~" \
    -e "s~\${BURST}~$BURST~" \
    -e "s~\${PROXY_PATH}~$PROXY_PATH~" \
    -e "s~\${CACHE_LIFETIME}~$CACHE_LIFETIME~" \
    /templates/nginx.tmpl > /etc/nginx/nginx.conf

exec "$@"

