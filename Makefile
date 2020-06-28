IMAGE_NAME="fialakarel/winbox"

build:
	docker build -t $(IMAGE_NAME) .

build-nc:
	docker build --no-cache --pull -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)

testrun:
	docker run --rm -it --name winbox --ipc host --volume /tmp/.X11-unix:/tmp/.X11-unix --env DISPLAY=:0 $(IMAGE_NAME)
