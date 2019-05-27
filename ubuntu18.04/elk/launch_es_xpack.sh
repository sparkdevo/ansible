#!/bin/bash

# please update inventory in conf/hosts file

docker run --rm -it \
    --mount type=bind,source=${PWD}/playbooks,target=/playbooks \
    --mount type=bind,source=${HOME}/.ssh,target=/.ssh \
    --mount type=bind,source=${PWD}/conf/ansible.cfg,target=/etc/ansible/ansible.cfg \
    --mount type=bind,source=${PWD}/conf/hosts,target=/etc/ansible/hosts \
    -w=/playbooks \
    sparkdev/ansible:elk ansible-playbook -u nick --private-key=/.ssh/id_rsa esxpack6.6.0.pb.yml
