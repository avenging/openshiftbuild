FROM centos:7
RUN yum -y install unzip;curl -o HYBRISCOMM6600P_0-70003031.ZIP http://192.168.99.105/HYBRISCOMM6600P_0-70003031.ZIP;pwd;ls -la;unzip HYBRISCOMM6600P_0-70003031.ZIP

