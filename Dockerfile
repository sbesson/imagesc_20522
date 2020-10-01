FROM openjdk:11

RUN apt-get update && apt-get install -y libblosc1

RUN wget https://github.com/glencoesoftware/bioformats2raw/releases/download/v0.2.5/bioformats2raw-0.2.5.zip && unzip bioformats2raw-0.2.5.zip && rm bioformats2raw-0.2.5.zip
RUN wget https://github.com/glencoesoftware/raw2ometiff/releases/download/v0.2.8/raw2ometiff-0.2.8.zip && unzip raw2ometiff-0.2.8.zip && rm raw2ometiff-0.2.8.zip
RUN wget https://downloads.openmicroscopy.org/bio-formats/6.5.1/artifacts/bftools.zip && unzip bftools.zip && rm bftools.zip
RUN mv bioformats2raw-0.2.5 /opt/bioformats2raw
RUN mv raw2ometiff-0.2.8 /opt/raw2ometiff
RUN mv bftools /opt/bftools

