xhost +

# docker run --rm -it \
#     --env="DISPLAY" \
#     --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#     opencv_env glxgears    

docker run --rm -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v $PWD/data:/home/data \
    opencv_env bash        