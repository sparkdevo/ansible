FROM ubuntu:16.04

LABEL version="1.0" author="nick li"

RUN apt-get update && \
    apt-get install -y libssl-dev libffi-dev && \
    apt-get install -y python-dev python-pip

RUN pip install ansible[azure]

CMD [ "ansible-playbook", "--version" ]
