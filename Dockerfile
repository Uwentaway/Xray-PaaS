# FROM ubuntu
# EXPOSE 80
# WORKDIR /app

# COPY entrypoint.sh ./

# RUN  apt-get update && apt-get install -y wget curl unzip iproute2 systemctl
# USER 10014
# ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]


FROM aautoops/ss:ssh2
USER 10000
ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]

# FROM nginx:latest
# RUN apt update && apt install -y wget unzip && wget https://github.com/XTLS/Xray-core/releases/download/v24.10.31/Xray-linux-64.zip --no-check-certificate && unzip Xray-linux-64.zip
# #RUN unzip Xray-linux-64.zip
# COPY  config.json ./
# COPY default.conf /etc/nginx/conf.d/default.conf
# COPY entrypoint.sh ./

# RUN sed -i '/^user nginx;/d' /etc/nginx/nginx.conf
# RUN chown -R 10014:10014 /var/cache/nginx /var/run /var/log/nginx
# USER 10014
# EXPOSE 80 10086
# ENTRYPOINT ["/bin/bash","-c","./entrypoint.sh"]

