Docker image for minergate to run on Arch linux/arm/v7
!!! Non Profitable project, Only experimental and with educational purposes

docker run -d --name minergate johannesanchez/minergate ./opt/cpuminer-multi/cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u email_wallet
