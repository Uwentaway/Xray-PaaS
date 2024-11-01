FROM ubuntu
EXPOSE 80
WORKDIR /app
USER 10014
COPY entrypoint.sh ./

RUN sudo apt-get update && sudo apt-get install -y wget curl unzip iproute2 systemctl

ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]
