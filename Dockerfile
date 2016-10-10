FROM debian
RUN apt-get update
RUN apt-get install build-essential cmake qtbase5-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools libgcrypt20-dev zlib1g-dev libxi-dev libxtst-dev
RUN mkdir build
RUN cd build
RUN cmake ..
RUN make [-j5]
