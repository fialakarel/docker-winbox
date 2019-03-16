# Winbox

Winbox Docker image.

Winbox is a small utility that allows administration of MikroTik RouterOS using a fast and simple GUI.

https://wiki.mikrotik.com/wiki/Manual:Winbox

## Usage

    docker run \
        --detach \
        --name winbox \
        --volume /tmp/.X11-unix:/tmp/.X11-unix \
        --env DISPLAY=$DISPLAY \
        fialakarel/winbox
