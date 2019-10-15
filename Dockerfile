FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible python-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists
RUN pip install ansible-lint
