#!/bin/bash

ls /usr/share/zoneinfo/

sudo rm /etc/localtime

sudo ln -sf /usr/share/zoneinfo/Europe/Vienna /etc/localtime
