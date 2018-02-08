FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends \
                              build-essential \
                              cmake \
                              libopenmpi-dev


RUN git clone https://github.com/precice/EventTimings.git
WORKDIR EventTimings

RUN cmake .. -DCMAKE_BUILD_TYPE=Debug
RUN make

