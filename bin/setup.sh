#!/bin/bash

## ROOT check
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as su" 1>&2 ; exit 1
fi

if [ ! -z "$(grep 'artisan.io' /etc/hosts)" ]; then
  echo -e "127.0.0.1\tartisan.io\twww.artisan.io" >> /etc/hosts
fi

exit 0 ## good
