export NATS_URL=nats://iotbox.net:4222
exec $SNAP/bin/nats pub iotbox.heartbeat.$(cat /etc/machine-id) --count=3153600 --sleep=10s "$(hostnamectl --j=short)"
