FROM centos:latest

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc &&\
    sh -c 'echo -e "[azure-cli]\nname=Azure CLI\nbaseurl=https://packages.microsoft.com/yumrepos/azure-cli\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo' &&\
    yum install azure-cli -y
