FROM ubuntu:20.04

RUN \
  apt-get --quiet update && \
  apt-get --quiet upgrade --assume-yes && \
  apt-get --quiet install --assume-yes git build-essential libssl-dev openssl && \
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
  apt-get --quiet remove --assume-yes --purge git build-essential libssl-dev && \
  apt-get --quiet autoremove --assume-yes --purge && \
  apt-get --quiet clean && \
  rm -rf /var/lib/apt/lists/* \
  ;

ENTRYPOINT	["eschalot"]
