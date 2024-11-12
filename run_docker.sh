#!/bin/sh
docker run -it -dp "4000:4000" --mount type=bind,source="$(pwd)",target=/mnt jekll
