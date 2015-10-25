#!/bin/bash
rrdtool create sensors.rrd  --step 300 \
DS:floor:GAUGE:600:U:U \
DS:wall:GAUGE:600:U:U \
DS:ceiling:GAUGE:600:U:U \
DS:attic:GAUGE:600:U:U \
DS:ambient:GAUGE:600:U:U \
RRA:AVERAGE:0.5:1:12 \
RRA:AVERAGE:0.5:1:288 \
RRA:AVERAGE:0.5:12:168 \
RRA:AVERAGE:0.5:12:720 \
RRA:AVERAGE:0.5:288:365
