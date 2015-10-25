#!/bin/bash
#set to C if using Celsius
TEMP_SCALE="F"

FLAGS=" -w 800"

WORKING_DIR="/rrdtool"
PNG_DIR="/rrdtool/graphs"
OUTTEMP_RRD="outtemp.rrd"
SENSOR_RRD="sensors.rrd"

#Zone Names
Z1="floor"
Z2="wall"
Z3="ceiling"
Z4="attic"
Z5="ambient"
 
 
#define the desired colors for the graphs
Z1_COLOR="#CC0000"
Z2_COLOR="#00CC00"
Z3_COLOR="#FF6600"
Z4_COLOR="#FF00FF"
Z5_COLOR="#663300"
OUTTEMP_COLOR="#0000FF"
 
#Hourly
rrdtool graph $PNG_DIR/temp_hourly.png $FLAGS --start -6h \
DEF:temp1=$WORKING_DIR/$SENSOR_RRD:$Z1:AVERAGE \
DEF:temp2=$WORKING_DIR/$SENSOR_RRD:$Z2:AVERAGE \
DEF:temp3=$WORKING_DIR/$SENSOR_RRD:$Z3:AVERAGE \
DEF:temp4=$WORKING_DIR/$SENSOR_RRD:$Z4:AVERAGE \
DEF:temp5=$WORKING_DIR/$SENSOR_RRD:$Z5:AVERAGE \
DEF:outtemp=$WORKING_DIR/$OUTTEMP_RRD:outtemp:AVERAGE \
AREA:outtemp$OUTTEMP_COLOR:"Outside Temperature [deg $TEMP_SCALE]" \
LINE1:temp1$Z1_COLOR:"Floor [deg $TEMP_SCALE]" \
LINE1:temp2$Z2_COLOR:"Wall [deg $TEMP_SCALE]" \
LINE1:temp3$Z3_COLOR:"Ceiling [deg $TEMP_SCALE]" \
LINE1:temp4$Z4_COLOR:"Attic [deg $TEMP_SCALE]" \
LINE1:temp5$Z5_COLOR:"Ambient [deg $TEMP_SCALE]" 

#Daily
rrdtool graph $PNG_DIR/temp_daily.png $FLAGS --start -1d \
DEF:temp1=$WORKING_DIR/$SENSOR_RRD:$Z1:AVERAGE \
DEF:temp2=$WORKING_DIR/$SENSOR_RRD:$Z2:AVERAGE \
DEF:temp3=$WORKING_DIR/$SENSOR_RRD:$Z3:AVERAGE \
DEF:temp4=$WORKING_DIR/$SENSOR_RRD:$Z4:AVERAGE \
DEF:temp5=$WORKING_DIR/$SENSOR_RRD:$Z5:AVERAGE \
DEF:outtemp=$WORKING_DIR/$OUTTEMP_RRD:outtemp:AVERAGE \
AREA:outtemp$OUTTEMP_COLOR:"Outside Temperature [deg $TEMP_SCALE]" \
LINE1:temp1$Z1_COLOR:"Floor [deg $TEMP_SCALE]" \
LINE1:temp2$Z2_COLOR:"Wall [deg $TEMP_SCALE]" \
LINE1:temp3$Z3_COLOR:"Ceiling [deg $TEMP_SCALE]" \
LINE1:temp4$Z4_COLOR:"Attic [deg $TEMP_SCALE]" \
LINE1:temp5$Z5_COLOR:"Ambient [deg $TEMP_SCALE]" 

#Weekly
rrdtool graph $PNG_DIR/temp_weekly.png $FLAGS --start -1w \
DEF:temp1=$WORKING_DIR/$SENSOR_RRD:$Z1:AVERAGE \
DEF:temp2=$WORKING_DIR/$SENSOR_RRD:$Z2:AVERAGE \
DEF:temp3=$WORKING_DIR/$SENSOR_RRD:$Z3:AVERAGE \
DEF:temp4=$WORKING_DIR/$SENSOR_RRD:$Z4:AVERAGE \
DEF:temp5=$WORKING_DIR/$SENSOR_RRD:$Z5:AVERAGE \
DEF:outtemp=$WORKING_DIR/$OUTTEMP_RRD:outtemp:AVERAGE \
AREA:outtemp$OUTTEMP_COLOR:"Outside Temperature [deg $TEMP_SCALE]" \
LINE1:temp1$Z1_COLOR:"Floor [deg $TEMP_SCALE]" \
LINE1:temp2$Z2_COLOR:"Wall [deg $TEMP_SCALE]" \
LINE1:temp3$Z3_COLOR:"Ceiling [deg $TEMP_SCALE]" \
LINE1:temp4$Z4_COLOR:"Attic [deg $TEMP_SCALE]" \
LINE1:temp5$Z5_COLOR:"Ambient [deg $TEMP_SCALE]" 

#Monthly
rrdtool graph $PNG_DIR/temp_monthly.png $FLAGS --start -1m \
DEF:temp1=$WORKING_DIR/$SENSOR_RRD:$Z1:AVERAGE \
DEF:temp2=$WORKING_DIR/$SENSOR_RRD:$Z2:AVERAGE \
DEF:temp3=$WORKING_DIR/$SENSOR_RRD:$Z3:AVERAGE \
DEF:temp4=$WORKING_DIR/$SENSOR_RRD:$Z4:AVERAGE \
DEF:temp5=$WORKING_DIR/$SENSOR_RRD:$Z5:AVERAGE \
DEF:outtemp=$WORKING_DIR/$OUTTEMP_RRD:outtemp:AVERAGE \
AREA:outtemp$OUTTEMP_COLOR:"Outside Temperature [deg $TEMP_SCALE]" \
LINE1:temp1$Z1_COLOR:"Floor [deg $TEMP_SCALE]" \
LINE1:temp2$Z2_COLOR:"Wall [deg $TEMP_SCALE]" \
LINE1:temp3$Z3_COLOR:"Ceiling [deg $TEMP_SCALE]" \
LINE1:temp4$Z4_COLOR:"Attic [deg $TEMP_SCALE]" \
LINE1:temp5$Z5_COLOR:"Ambient [deg $TEMP_SCALE]" 

#Yearly
rrdtool graph $PNG_DIR/temp_yearly.png $FLAGS --start -1y \
DEF:temp1=$WORKING_DIR/$SENSOR_RRD:$Z1:AVERAGE \
DEF:temp2=$WORKING_DIR/$SENSOR_RRD:$Z2:AVERAGE \
DEF:temp3=$WORKING_DIR/$SENSOR_RRD:$Z3:AVERAGE \
DEF:temp4=$WORKING_DIR/$SENSOR_RRD:$Z4:AVERAGE \
DEF:temp5=$WORKING_DIR/$SENSOR_RRD:$Z5:AVERAGE \
DEF:outtemp=$WORKING_DIR/$OUTTEMP_RRD:outtemp:AVERAGE \
AREA:outtemp$OUTTEMP_COLOR:"Outside Temperature [deg $TEMP_SCALE]" \
LINE1:temp1$Z1_COLOR:"Floor [deg $TEMP_SCALE]" \
LINE1:temp2$Z2_COLOR:"Wall [deg $TEMP_SCALE]" \
LINE1:temp3$Z3_COLOR:"Ceiling [deg $TEMP_SCALE]" \
LINE1:temp4$Z4_COLOR:"Attic [deg $TEMP_SCALE]" \
LINE1:temp5$Z5_COLOR:"Ambient [deg $TEMP_SCALE]" 
