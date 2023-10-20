# Build
``` sh
docker build -t image-name .
```
# Run
``` sh
docker run --gpus all --rm -it -p 8888:8888 -v ./workdir:/work --name my-llm image-name
```