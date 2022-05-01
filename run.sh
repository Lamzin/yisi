#!/bin/sh
docker build -t yisi . && \
docker run -it --rm -v "$(pwd)"/out:/out yisi
