docker build -t gpuinfo .
docker run --gpus all --rm -p 12000:12000 gpuinfo
