#!/bin/bash

ls /usr/share/zoneinfo/
rm /etc/localtime
ln -sf /usr/share/zoneinfo/Europe/Vienna /etc/localtime
