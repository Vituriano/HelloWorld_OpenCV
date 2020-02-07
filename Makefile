build:
	docker build -t vituriano/object_detection .

run:
	docker run -ti -it --rm -e DISPLAY=unix$(DISPLAY) -v /tmp/.X11-unix:/tmp/.X11-unix --device=/dev/video0:/dev/video0 vituriano/object_detection

compile:
	g++ main.cpp -o output `pkg-config --cflags --libs opencv` -lopencv_core