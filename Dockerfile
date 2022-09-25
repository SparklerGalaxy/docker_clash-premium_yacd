# syntax=docker/dockerfile:1.2
FROM dreamacro/clash-premium:latest

WORKDIR /root

RUN apk add git --repository http://mirrors.aliyun.com/alpine/v3.14/main/
# RUN git clone -b gh-pages --depth 1 https://github.com/Dreamacro/clash-dashboard /root/clash-dashboard
RUN git clone -b gh-pages --depth 1 https://github.com/haishanh/yacd.git /root/clash-dashboard

EXPOSE 9090 9090
EXPOSE 7890 7890
EXPOSE 7891 7891
EXPOSE 7892 7892
