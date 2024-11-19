#!/bin/sh
image_name="backendt-blog:latest"
image_exists=$(docker image inspect $image_name -f 1 2>/dev/null)

if [ -z "$image_exists" ]; then
  docker build -t $image_name .
fi

docker run -it -dp "4000:4000" --mount type=bind,source="$(pwd)",target=/mnt $image_name
