# How to use

1) Install docker.
2) Run `sudo ./build.sh` to build the docker image. This will take a while the first time it is built. Future builds will be quick since the layers will be cached.
3) Run `sudo ./run.sh` to start the docker image. 
4) Run `export LD_LIBRARY_PATH=/usr/local/lib`.

# Please note

1) s1_predata runs fine but I cannot fully test the remaining scripts as I do not have a cuda capable graphics card.
2) The first time the build script is run it takes the image a long time to build and the image virtual size is quite large. Need to optimize this.
