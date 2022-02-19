#!/bin/bash

echo "Waiting for 30 seconds before checking health.."
sleep 30

status_code=$(curl --write-out %{http_code} --silent --output /dev/null http://ec2-54-147-11-140.compute-1.amazonaws.com:8080/)
if [[ "$status_code" -ne 200 ]] ; then
  echo "App is not healthy - $status_code"
  exit 0
else
  echo "App is responding with $status_code"
  exit 0
fi
