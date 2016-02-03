#!/bin/bash
cp /opt/kapacitor/kapacitor.conf.template /opt/kapacitor/kapacitor.conf
sed -i "s#INFLUXDB_HOST#'$INFLUXDB_HOST'#" /opt/kapacitor/kapacitor.conf
sed -i "s#INFLUXDB_USER#$INFLUXDB_USER#" /opt/kapacitor/kapacitor.conf
sed -i "s#INFLUXDB_PASS#$INFLUXDB_PASS#" /opt/kapacitor/kapacitor.conf

kapacitord -config /opt/kapacitor/kapacitor.conf
