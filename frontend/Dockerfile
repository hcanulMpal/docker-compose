FROM centos:7
RUN yum -y update 

RUN yum install -y curl git
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash - && yum install -y gcc-c++ make
RUN yum install -y nodejs
RUN yum install openssh-clients

COPY ./node.sh /bin/run.sh
RUN chmod +x /bin/run.sh 
RUN echo "fs.inotify.max_user_watches=524288" > /etc/sysctl.conf
RUN mkdir -p /root/.ssh
COPY ./ssh.key /root/.ssh/id_rsa
RUN ssh-keyscan gitlab.com > /root/.ssh/known_hosts
RUN chmod 600 /root/.ssh/id_rsa
WORKDIR /root/frontend
CMD [ "/bin/run.sh" ]