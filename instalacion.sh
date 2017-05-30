#! /bin/bash

cd /root

# Use the "noninteractive" debconf frontend
#export DEBIAN_FRONTEND="noninteractive"

## Change repositories to spanish (optional)
sed -i 's/\/archive\.ubuntu\.com/\/es.archive.ubuntu.com/g' /etc/apt/sources.list

# Install wget, needed for download repository keys
apt-get update && apt-get install -y wget

apt-get build-dep -y ffmpeg

