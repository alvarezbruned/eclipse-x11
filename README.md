# eclipse-x11

xhost +local:docker
docker run -td \
    --net host \
    --cpuset-cpus 0 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $HOME/Downloads:/root/Downloads \
    --device /dev/snd \
    -m 500000000 \
    --memory-swap 2500000000 \
    -v /dev/shm:/dev/shm \
    --name eclipse-x11 \
    albertalvarezbruned/eclipse-x11
