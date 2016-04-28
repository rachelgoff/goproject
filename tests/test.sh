#!/bin/bash
TESTSTRING="panda"
echo $TESTSTRING
../bin/simpleWebSvr &
/bin/sleep 5
curl -s http://localhost:8085/$TESTSTRING | grep $TESTSTRING
if [ $? -eq 0 ] 
then	
	echo "Test Passed."
	pkill simpleWebSvr
	exit 0
else 
	echo "Test Failed."
	pkill simpleWebSvr
	exit 1
fi
