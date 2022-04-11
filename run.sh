docker build -t localhost:32000/gpuinfo:1.0.0 .
docker push localhost:32000/gpuinfo:1.0.0

docker run --gpus all --rm -p 12000:12000 gpuinfo
