FROM mcr.microsoft.com/mssql/server:2019-CU3-ubuntu-18.04
USER root
RUN apt-get update && apt-get install -y curl sudo
RUN usermod -aG sudo mssql
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN sudo /opt/mssql/bin/mssql-conf set sqlagent.enabled true
USER mssql