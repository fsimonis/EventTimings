FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
                              build-essential \
                              cmake \
                              libopenmpi-dev \
                              git

ARG CXX

# COPY $SRC_DIR .
RUN git clone https://github.com/precice/EventTimings.git

WORKDIR EventTimings/BUILD

RUN cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=$CXX
RUN make -j2

