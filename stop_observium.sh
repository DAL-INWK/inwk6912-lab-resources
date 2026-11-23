#!/bin/bash

# Stop the Docker container and remove all folders
# Modify the default syslog port to remove conflict
# with the host's syslog
docker stop observium && docker rm observium
rm -rf rrd logs config
