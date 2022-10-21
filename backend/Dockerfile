FROM centos:7
RUN yum -y update 

RUN yum install -y curl git
RUN yum install -y python3
RUN yum install python3-pip -y


COPY ./start.sh /bin/run.sh
RUN chmod +x /bin/run.sh 
WORKDIR /root/frontend
CMD [ "/bin/run.sh" ]