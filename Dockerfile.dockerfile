FROM osrf/ros:melodic-desktop-full

# copy requirement files
COPY system-requirements.txt .
COPY python-requirements.txt .

# install dependencies
RUN apt-get update \
    && xargs apt-get install -y --no-install-recommends < system-requirements.txt \
    && rm -rf /var/lib/apt/lists/* \
    && python3 -m pip install --upgrade pip \
    && pip3 install --ignore-installed -r python-requirements.txt

# build gtsam
WORKDIR /home/
RUN git clone https://github.com/borglab/gtsam.git
WORKDIR gtsam/build
RUN cmake .. && make install

# build python wrapper for gtsam
RUN cmake .. -DGTSAM_BUILD_PYTHON=1 -DGTSAM_PYTHON_VERSION=3.6.9 \
    && make python-install

# install s2cnn
WORKDIR ../..
RUN git clone https://github.com/jonkhler/s2cnn.git
WORKDIR s2cnn
RUN python3 setup.py install

# build ceres solver
WORKDIR ..
RUN git clone https://ceres-solver.googlesource.com/ceres-solver ceres-solver
WORKDIR ceres-bin
RUN cmake ../ceres-solver && make -j3 && make install

WORKDIR ..
