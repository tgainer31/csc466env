echo on

docker image rm head:latest
docker image rm compute:latest

docker build -t head:latest ./docker/master
docker build -t compute:latest ./docker/worker
