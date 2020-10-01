/opt/bfconvert /data/test.fake /data/default.ome.tiff
/opt/bfconvert -tilex -tiley /data/test.fake /data/default.ome.tiff

mkdir /data/raw
/opt/bioformats2raw/bin/bioformats2raw /data/test.fake /data/raw/
/opt/raw2ometiff/bin/raw2ometiff /data/raw /data/bf2raw2ometiff.ome.tiff
