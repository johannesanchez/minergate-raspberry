# FROM alpine:3.14
FROM ubuntu:16.04
LABEL maintainer="johallengineer@gmail.com"

RUN apt update -y
RUN apt upgrade -y
RUN apt install git automake autoconf libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev -y 
RUN apt install build-essential -y
# gcc g++ make -y

RUN cd /opt && git clone https://github.com/tpruvot/cpuminer-multi && cd cpuminer-multi && pwd && ./autogen.sh && ./configure && ./build.sh

# ./cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u YOUR_EMAIL

# ENTRYPOINT [ "sh" ]

# CMD [ "bash" ]