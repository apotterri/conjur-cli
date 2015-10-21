FROM ubuntu:14.04
MAINTAINER Conjur Inc

RUN apt-get install curl -y

RUN curl -o /tmp/cli.deb https://s3.amazonaws.com/conjur-releases/omnibus/conjur_4.27.0-1_amd64.deb \
    && dpkg -i /tmp/cli.deb \
    && rm /tmp/cli.deb

