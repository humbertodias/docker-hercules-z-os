FROM ubuntu:20.04

ARG TK4_VERSION=v1.00_current

RUN	apt update \
 && apt install -y unzip wget binutils \
 && cd /opt \
 && mkdir hercules \
 && cd hercules \
 && mkdir tk4 \
 && cd tk4 \
 && wget http://wotho.ethz.ch/tk4-/tk4-_$TK4_VERSION.zip \
 && unzip tk4-_$TK4_VERSION.zip \
 && rm tk4-_$TK4_VERSION.zip \
 #echo 0010 3270 CONS >> /opt/hercules/tk4/conf/intcons.cnf && \
 && apt -y purge wget unzip \
 && apt -y autoclean \
 && apt -y autoremove \
 && apt -y purge $(dpkg --get-selections | grep deinstall | sed s/deinstall//g) \
 && rm -rf /var/lib/apt/lists/*

EXPOSE     3270 8038
WORKDIR    /opt/hercules/tk4/
ENTRYPOINT ["/opt/hercules/tk4/mvs"]