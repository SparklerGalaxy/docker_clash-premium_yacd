# docker build -t aohaili/docker_clash-premium_yacd:20220924 .
DOCKER_BUILDKIT=1 docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t aohaili/docker_clash-premium_yacd:20220924 . --push
# docker run -d -p 7890:7890 -p 7891:7891 -p 7892:7892 -p 9090:9090 -v /{path}/zhs.tw.yaml:/root/.config/clash/config.yaml aohaili/docker_clash-premium_yacd:20220924