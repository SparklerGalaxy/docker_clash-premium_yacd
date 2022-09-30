# docker_clash-premium_yacd

clash-premium 与 yacd

## 快速开始

1. 准备 {path}/config.yaml 文件。

1. 下载代码，构建 docker 的镜像，启动容器
```bash
git clone git@github.com:aohaili/docker_clash-premium_yacd.git

cd docker_clash-premium_yacd

docker build -t docker_clash-premium_yacd:latest . 

docker run -d -p 7890:7890 -p 7891:7891 -p 7892:7892 -p 9090:9090 -v {path}/config.yaml:/root/.config/clash/config.yaml docker_clash-premium_yacd:latest
```
1. 访问配置页面
http://localhost:9090/ui


## 构建多平台镜像，并上传
```bash
DOCKER_BUILDKIT=1 docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t aohaili/docker_clash-premium_yacd:latest . --push
```
