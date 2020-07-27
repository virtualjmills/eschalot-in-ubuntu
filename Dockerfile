FROM ubuntu:20.04

RUN \
  apt update && \
  apt upgrade --assume-yes && \
  apt install --assume-yes git build-essential libssl-dev openssl && \
  git clone https://github.com/virtualjmills/eschalot.git && \
  mkdir --parents /usr/lib/eschalot && \
  cd /eschalot/ && \
  git checkout --quiet -b gcc_8.x_fixups --track origin/gcc_8.x_fixups && \
  make -S -w clean && \
  make -S -w && \
  cp eschalot /usr/bin/ && \
  cp worgen /usr/bin/ && \
  cp *.txt /usr/lib/eschalot/ && \
  cd / && \
  rm -rf /eschalot && \
  apt remove --assume-yes --purge git build-essential libssl-dev && \
  apt autoremove --assume-yes --purge && \
  apt clean && \
  rm -rf /var/lib/apt/lists/* \
  ;

ENTRYPOINT	["eschalot"]
