# Dockerfile for building Ansible image

FROM sparkdev/ansible:ubuntu18.04 

LABEL version="1.0" author="nick li"

RUN ansible-galaxy install elastic.elasticsearch,6.6.0

CMD [ "ansible-playbook", "--version" ]
