#!/bin/bash

envsubst '$MOON_LAMP_HOST' < /usr/share/nginx/html/index.html > /out.html
mv /out.html /usr/share/nginx/html/index.html
nginx -g 'daemon off;'