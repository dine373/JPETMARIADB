FROM centos:7
MAINTAINER Dinesh V

RUN yum update -y
RUN yum install -y openssh-server sudo 
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo 'root:password' | chpasswd
RUN yum install -y wget net-tools java-1.8.0-openjdk initscripts
RUN yum install -y tomcat 

ADD JPetStore.war /tmp/Jpet/
ADD images /tmp/Jpet/
COPY mysql-connector-java-5.0.8-bin.jar /usr/share/tomcat/lib/
COPY upgrade.sql /tmp/upgrade.sql
COPY mariaDB.repo /etc/yum.repos.d/mariaDB.repo
RUN yum install MariaDB-server MariaDB-client -y
COPY jpet.sql /tmp/jpet.sql
COPY custom.sh /tmp/custom.sh
COPY rc.local /etc/rc.d/rc.local 
RUN chmod 755 /etc/rc.d/rc.local

Volume /sys/fs/cgroup 
EXPOSE 22
EXPOSE 3306
EXPOSE 8080
CMD ["/sbin/init"]
