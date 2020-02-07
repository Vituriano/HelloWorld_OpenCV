FROM vituriano/opencv:3.4
COPY . /app
WORKDIR /app
RUN g++ main.cpp -o output `pkg-config --cflags --libs opencv` -lopencv_core