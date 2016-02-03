FROM quay.io/aptible/alpine:latest

ADD . /opt
WORKDIR /opt
RUN mkdir vendor

RUN echo $'#!/bin/sh \n\
echo $1' > vendor/echo.sh

RUN chmod u+x vendor/echo.sh

CMD ["bin/echo.sh", "Hello"]
