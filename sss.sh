#!/bin/sh
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  wget -o /tmp/sss.txt https://ipv6ibmcloudone.herokuapp.com/
  sleep 10m
done
