#! /bin/bash


/opt/bftools/bfconvert /tmp/test.fake /tmp/default.ome.tiff
/opt/bftools/bfconvert -tilex -tiley /tmp/test.fake /tmp/tiled.ome.tiff

mkdir /data/raw
/opt/bioformats2raw/bin/bioformats2raw /tmp/test.fake /tmp/raw/
/opt/raw2ometiff/bin/raw2ometiff /tmp/raw /tmp/bf2raw2ometiff.ome.tiff
