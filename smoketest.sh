#!/bin/sh
set -x
curl -verbose  -X POST -H 'content-type: application/json;charset=UTF-8'  -d '{"productName":"HD Setupbox", "serviceId":"100"}' "$POST_URL" |pbcopy
pbpaste | grep '\"serviceId\":\"100\"'
if [ "$?" -eq "0" ] ; then
echo "Success"
else
echo "Failed"
exit 1
fi
