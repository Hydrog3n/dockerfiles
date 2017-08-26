FROM ubuntu

MAINTAINER Hydrog3n <contact@loicvaille.ovh>

# update apt cache
RUN apt-get update

# install packages
RUN apt-get install -y git libcurl4-openssl-dev libjansson-dev automake gcc build-essential binutils

# create directory worker
RUN mkdir -p /opt/minerd

# clone minerd repository
RUN cd /tmp \
    && git clone https://github.com/elmad/darkcoin-cpuminer-1.3-avx-aes.git \
    && cd darkcoin-cpuminer-1.3-avx-aes \
    && chmod +x autogen.sh \
    && ./autogen.sh \
    && ./configure CFLAGS="-O3 -march=native" \
    && make && make install


# run minerd
COPY entrypoint.sh /

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]
