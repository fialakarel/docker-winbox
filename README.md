# Winbox

Winbox Docker image.

Winbox is a small utility that allows administration of MikroTik RouterOS using a fast and simple GUI.

https://wiki.mikrotik.com/wiki/Manual:Winbox

## Usage

    docker run \
        --detach \
        --rm \
        --ipc host \
        --net host \
        --name winbox \
        --volume /tmp/.X11-unix:/tmp/.X11-unix \
        --volume /etc/localtime:/etc/localtime:ro \
        --volume /usr/share/X11/xkb:/usr/share/X11/xkb:ro \
        --volume /etc/machine-id:/etc/machine-id:ro \
        --volume "$HOME/.local/share/winbox:/root/.wine/drive_c/users/root/Application Data/Mikrotik/Winbox" \
        --env DISPLAY=$DISPLAY \
        fialakarel/winbox
