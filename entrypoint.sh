#! /bin/bash


time /opt/bftools/bfconvert /tmp/test.fake /tmp/default.ome.tiff
time /opt/bftools/bfconvert -tilex 512 -tiley 512 /tmp/test.fake /tmp/tiled.ome.tiff
time /opt/bftools/bfconvert -compression lzw  -tilex 512 -tiley 512 /tmp/test.fake /tmp/tiled_compressed.ome.tiff

mkdir /data/raw
time /opt/bioformats2raw/bin/bioformats2raw /tmp/test.fake /tmp/raw/
time /opt/raw2ometiff/bin/raw2ometiff /tmp/raw /tmp/bf2raw2ometiff.ome.tiff
