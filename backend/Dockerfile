FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip python3-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install ssh
RUN mkdir -p /root/.ssh

COPY ./ssh.key /root/.ssh/id_rsa

RUN ssh-keyscan gitlab.com > /root/.ssh/known_hosts

RUN chmod 600 /root/.ssh/id_rsa

COPY ./start.sh /usr/bin/start

RUN chmod +x /usr/bin/start

WORKDIR /root/api-rest
CMD [ "/usr/bin/start" ]