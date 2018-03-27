FROM centos:7
COPY run-httpd.sh /usr/local/bin
RUN chmod 777 /usr/local/bin/run-httpd.sh; \
    yum -y install unzip httpd; \
    mkdir -p /app/hybris; \
    cd /app/hybris; \
    curl -o HYBRISCOMM6600P_0-70003031.ZIP http://192.168.99.101/HYBRISCOMM6600P_0-70003031.ZIP; \
    pwd; \
    head HYBRISCOMM6600P_0-70003031.ZIP; \
    ls -la; \
    unzip HYBRISCOMM6600P_0-70003031.ZIP; \
    ls -la; \
    rm HYBRISCOMM6600P_0-70003031.ZIP; 
ENTRYPOINT ["/usr/local/bin/run-httpd.sh"]

