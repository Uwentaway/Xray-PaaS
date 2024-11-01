# FROM ubuntu
# EXPOSE 80
# WORKDIR /app

# COPY entrypoint.sh ./

# RUN  apt-get update && apt-get install -y wget curl unzip iproute2 systemctl
# USER 10014
# ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]


# FROM aautoops/ss:ssh2
# USER 10014
# ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]

FROM busybox:latest
WORKDIR /app
RUN wget https://github.com/XTLS/Xray-core/releases/download/v24.10.31/Xray-linux-64.zip --no-check-certificate && unzip Xray-linux-64.zip
#RUN unzip Xray-linux-64.zip
COPY  config.json ./
USER 10014
EXPOSE 10086
ENTRYPOINT [ "/bin/sh -c","./xray" ]

