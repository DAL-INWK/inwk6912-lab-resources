#!/bin/bash

# Run the Docker container
# Modify the default syslog port to remove conflict
# with the host's syslog
docker run -d \
  --network netlab_mgmt \
  -v $(pwd)/config:/config \
  -v $(pwd)/logs:/opt/observium/logs \
  -v $(pwd)/rrd:/opt/observium/rrd \
  -p 8668:8668 \
  -p 5140:514/udp \
  -e TZ="America/Halifax" \
  --rm \
  --name observium \
  uberchuckie/observium
