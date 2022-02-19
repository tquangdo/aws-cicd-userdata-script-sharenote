#!/bin/bash

export MYSQL_HOST=localhost
export MYSQL_DATABASE=sharenote
export MYSQL_USER=root
export MYSQL_PASSWORD=P@ssw0rd

cd /home/ec2-user/server
java -jar ./target/demo-0.0.1-SNAPSHOT.jar > /dev/null 2> /dev/null < /dev/null &