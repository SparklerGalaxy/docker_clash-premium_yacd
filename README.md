# docker_clash-premium_yacd

clash-premium 与 yacd

## Build 
```bash
docker build -t docker_clash-premium_yacd:latest . 
```

## Buildx
```bash
DOCKER_BUILDKIT=1 docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t docker_clash-premium_yacd:latest . --push
```

## Run
```bash
docker run -d -p 7890:7890 -p 7891:7891 -p 7892:7892 -p 9090:9090 -v /{path}/zhs.tw.yaml:/root/.config/clash/config.yaml aohaili/docker_clash-premium_yacd:20220924
```
