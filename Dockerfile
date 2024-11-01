# FROM ubuntu
# EXPOSE 80
# WORKDIR /app

# COPY entrypoint.sh ./

# RUN  apt-get update && apt-get install -y wget curl unzip iproute2 systemctl
# USER 10014
# ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]


FROM aautoops/ss:ssh2
USER 10014
ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]
