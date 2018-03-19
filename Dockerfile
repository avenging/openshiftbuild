FROM centos:7
RUN yum -y install unzip; \
    mkdir -p /app/hybris; \
    cd /app/hybris; \
    curl -o HYBRISCOMM6600P_0-70003031.ZIP http://192.168.99.105/HYBRISCOMM6600P_0-70003031.ZIP; \
    pwd; \
    ls -la; \
    unzip HYBRISCOMM6600P_0-70003031.ZIP; \
    rm HYBRISCOMM6600P_0-70003031.ZIP
CMD [“/bin/bash”]

