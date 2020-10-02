#! /bin/bash

echo "bfconvert (default)"
time /opt/bftools/bfconvert /tmp/test.fake /tmp/bfconvert_default.ome.tiff
echo "bfconvert (LZW)"
time /opt/bftools/bfconvert -compression LZW /tmp/test.fake /tmp/bfconvert_lzw.ome.tiff
echo "bfconvert (zlib)"
time /opt/bftools/bfconvert -compression zlib /tmp/test.fake /tmp/bfconvert_zlib.ome.tiff
echo "bfconvert (tiled)"
time /opt/bftools/bfconvert -tilex 1024 -tiley 1024 /tmp/test.fake /tmp/bfconvert_tiled.ome.tiff
echo "bfconvert (tiled, LZW)"
time /opt/bftools/bfconvert -compression LZW  -tilex 1024 -tiley 1024 /tmp/test.fake /tmp/bfconvert_tiled_lzw.ome.tiff
echo "bfconvert (tiled, zlib)"
time /opt/bftools/bfconvert -compression zlib  -tilex 512 -tiley 1024 /tmp/test.fake /tmp/bfconvert_tiled_zlib.ome.tiff

mkdir /data/raw
time /opt/bioformats2raw/bin/bioformats2raw /tmp/test.fake /tmp/raw/
echo "raw2ometiff (LZW)"
time /opt/raw2ometiff/bin/raw2ometiff /tmp/raw /tmp/raw2ometiff_default.ome.tiff
echo "bfconvert (zlib)"
time /opt/raw2ometiff/bin/raw2ometiff --compression zlib /tmp/raw /tmp/raw2ometiff_zlib.ome.tiff
