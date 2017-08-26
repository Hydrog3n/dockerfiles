# docker_minerd

## Description:

This docker container will help you to quickly launch minerd instance.
It is based on [darkcoin cpuminer](https://github.com/elmad/darkcoin-cpuminer-1.3-avx-aes.git). 

## Build:

**To build docker image it's easy.**  
``$ git clone https://github.com/hydrog3n/dockerfiles.git``  
``$ cd dockerfiles/minerd``  
``$ docker build -t minerd .``

## Run:
Easy:

``$ docker run -d --name minerd -e url=<stratum+tcp://urlpool> -e port=<portofpool> -e worker_name=<pseudo.name> -e worker_password=<workerpassword>  minerd``

## Donations:

If you don't know what to do with your coins:

**ETH:** 0x70008923609dee2c553c545bcabbb58a09bfd0df  
**BTC:** 15d7aooaEFAxtsRzCbJZZKkizb58cWD8zk  
**DSH:** XpTMX6P5y6Wcj7VZZEvTkZfmw6cGvE6EU7