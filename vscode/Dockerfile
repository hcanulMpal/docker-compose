FROM centos:8
RUN yum clean all
RUN rm -r /var/cache/yum
RUN yum -y update 
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum -y install yum-utils curl
RUN yum-config-manager --enable remi-php74
RUN yum update -y
RUN yum install -y php php-cli php-mysqlnd php-zip php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json php-xdebug php-soap
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/bin/composer
RUN chmod +x /usr/bin/composer 

RUN curl -fOL https://github.com/cdr/code-server/releases/download/v3.6.0/code-server-3.6.0-amd64.rpm
RUN rpm -i code-server-3.6.0-amd64.rpm

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash - && yum install -y gcc-c++ make
RUN yum install -y nodejs git
RUN echo "fs.inotify.max_user_watches=524288" > /etc/sysctl.conf
RUN rm code-server-3.6.0-amd64.rpm

RUN echo -e "#!/bin/bash\n/bin/code-server" > /bin/start.sh
RUN chmod +x /bin/start.sh

RUN mkdir -p /root/.ssh
COPY ./ssh.key /root/.ssh/id_rsa
RUN ssh-keyscan gitlab.com > /root/.ssh/known_hosts
RUN chmod 600 /root/.ssh/id_rsa

RUN git config --global user.email "proyectos.ayuntamiento.fcp@gmail.com"
RUN git config --global user.name "hugo canul
RUN mkdir -p ~/.config/code-server
RUN echo -e "bind-addr: 0.0.0.0:8080\nauth: password\npassword: ha260182ha\ncert: false" > ~/.config/code-server/config.yaml
CMD [ "/bin/start.sh"]

