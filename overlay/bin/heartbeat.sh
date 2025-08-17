#!/bin/bash
export NATS_URL=nats://iotbox.net:4222
BODY=$(hostnamectl --j=short)
echo $BODY
exec $SNAP/bin/nats pub iotbox.heartbeat.$(cat /etc/machine-id) --count=3153600 --sleep=10s "$BODY" > /dev/null
