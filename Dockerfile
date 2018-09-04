FROM hub.c.163.com/public/ubuntu:16.04
MAINTAINER netease
RUN mkdir -p /var/run/sshd
RUN apt-get update \
    && apt-get update && apt-get install -y openssh-server vim tar wget curl rsync bzip2 iptables tcpdump less telnet net-tools lsof sysstat cron supervisor inetutils-ping \ 
    && rm -rf /var/lib/apt/lists/*
RUN cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
CMD ["/usr/bin/supervisord"]