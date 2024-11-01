#!/bin/sh

# 启动 Nginx，并保持前台运行
nginx -g 'daemon off;' &

# 启动 Xray
./xray
