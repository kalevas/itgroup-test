#!/bin/bash

dpkg -l | grep 'mysql\|docker\|nginx'|awk '{print $2}'|xargs apt remove -y --purge && apt autoremove --purge -y && apt autoclean