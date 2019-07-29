#!/bin/bash

docker run --rm \
    --mount type=bind,source=${PWD},target=/workdir \
    --mount type=bind,source=${HOME}/.ssh,target=/.ssh \
    -w=/workdir \
    sparkdev/ansible:1804-2.8 ansible-playbook --private-key=/.ssh/id_rsa -u nick jenkins.pb.yml
