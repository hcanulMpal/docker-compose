FROM centos:7
RUN yum -y update 

RUN yum install -y curl git
RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash - && yum install -y gcc-c++ make
RUN yum install -y nodejs

COPY ./node.sh /bin/run.sh
RUN chmod +x /bin/run.sh 
RUN echo "fs.inotify.max_user_watches=524288" > /etc/sysctl.conf
WORKDIR /root/frontend
CMD [ "/bin/run.sh" ]