FROM ubuntu:18.04

# install GLX-Gears
RUN apt-get update && apt install -y --no-install-recommends mesa-utils x11-apps && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y wget cmake git vim unzip \
    build-essential \
    libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
    python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev 


RUN cd /home && wget https://github.com/opencv/opencv/archive/4.1.1.zip
RUN cd /home && unzip 4.1.1.zip  
RUN cd /home/opencv-4.1.1 && \
    mkdir build && \
    cd build && \
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. && \
    make -j4 && \
    make install


