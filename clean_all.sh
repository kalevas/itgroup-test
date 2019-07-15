#!/bin/bash

dpkg -l | grep 'mysql\|docker\|php\|nginx'| \
          awk '{print $2}'| \
          xargs apt remove -y --purge && \
          apt autoremove --purge -y && \
          apt autoclean && \
          rm -rf /var/lib/mysql* /etc/nginx /etc/php /etc/mysql /var/www/*