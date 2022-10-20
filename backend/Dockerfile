FROM centos:7
RUN yum -y update 

RUN yum install -y curl git
RUN yum install -y python3
RUN yum install python3-pip -y

# RUN yum install openssh-clients

COPY ./start.sh /bin/run.sh
RUN chmod +x /bin/run.sh 
# RUN mkdir -p /root/.ssh
# COPY ./ssh.key /root/.ssh/id_rsa
# RUN ssh-keyscan gitlab.com > /root/.ssh/known_hosts
# RUN chmod 600 /root/.ssh/id_rsa
WORKDIR /root/frontend
CMD [ "/bin/run.sh" ]