#!/usr/bin/env bash


# https://drive.google.com/file/d/1x9JG6VXWDZUZ3EfgP_SpBwPJbTvqgB0p/view?usp=sharing
FILEID="1x9JG6VXWDZUZ3EfgP_SpBwPJbTvqgB0p"
FILENAME="cns_feat-2b.tar.gz.sha256sum"
wget \
    --no-check-certificate "https://docs.google.com/uc?export=download&id=${FILEID}" \
    -O "${FILENAME}"

rm -rf /tmp/cookies.txt

# https://drive.google.com/file/d/.../view?usp=sharing
FILEID=""
FILENAME="cns_feat-2b.tar.gz"
wget \
    --load-cookies /tmp/cookies.txt \
    "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \"https://docs.google.com/uc?export=download&id=${FILEID}\" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${FILEID}" \
    -O "${FILENAME}"

rm -rf /tmp/cookies.txt
