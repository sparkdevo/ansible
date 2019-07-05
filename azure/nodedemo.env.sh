#!/bin/bash

set -ex

datetimestr=$(TZ='Asia/Chongqing' date "+%Y%m%d%H%M%S")
outputfilename="/tmp/createvm."${datetimestr}".log"


docker run --rm \
    -e AZURE_SUBSCRIPTION_ID=xxx \
    -e AZURE_CLIENT_ID=xxx \
    -e AZURE_SECRET=xxx \
    -e AZURE_TENANT=xxx \
    --mount type=bind,source=${PWD},target=/workdir \
    -w=/workdir \
    sparkdev/ansible:azure ansible-playbook createvm.pb.yml | tee ${outputfilename}

ip=$(grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' ${outputfilename})
if test -z "${ip}"; then
    exit 1
fi

echo ${ip}

