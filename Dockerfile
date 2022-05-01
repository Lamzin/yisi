FROM ubuntu

RUN apt-get update
RUN apt-get install -y make
RUN apt-get install -y xsltproc
RUN apt-get install -y g++

COPY src/ /src
COPY test/ /test
WORKDIR /src
RUN make all -j 4
# RUN make test

COPY data/ /data

ENTRYPOINT [ "yisi", "--config", "/data/yisi.config" ]
