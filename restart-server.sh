#!/bin/bash
RAILSPS=`ps -ef | grep rails | grep -v grep`
RAILSPID=`echo $RAILSPS | awk '{print $2 }'`
i=1
if ! [ -z "$RAILSPID" ]; then
echo "Killing rails server with PID of "$RAILSPID
kill -9 $RAILSPID
echo "Process killed."
echo "---------------"
while [ $i -lt 5 ]; do
 printf "."
 sleep 1
 i=$[$i+1]
done
nohup rails s & > /dev/null 2>&1
RAILSPS=`ps -ef | grep rails | grep -v grep`
RAILSPID=`echo $RAILSPS | awk '{print $2 }'`
echo "New rails server started with PID of "$RAILSPID
else
echo "No running rails server detected."
echo "Starting a new one anyways."
nohup rails s & > /dev/null 2>&1
RAILSPS=`ps -ef | grep rails | grep -v grep`
RAILSPID=`echo $RAILSPS | awk '{print $2 }'`
echo "New rails server started with PID of "$RAILSPID
fi
