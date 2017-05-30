#! /bin/bash

docker rm obs-compile
docker rmi obs-compile
cp instalacion.sh root/ || exit
docker build -t obs-compile .
docker run -P --name obs-compile -v "$PWD/root/:/root" obs-compile

echo -e "Done!\nList available images with 'docker images'"

