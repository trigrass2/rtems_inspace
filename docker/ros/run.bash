#!/usr/bin/env bash

xhost +local:root

docker run -it --rm \
    --privileged \
    --net=host \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix \
    --device=/dev/dri:/dev/dri \
    --env="DISPLAY=$DISPLAY" \
    ros 

xhost -local:root
