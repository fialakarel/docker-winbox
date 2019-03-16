FROM fialakarel/wine

MAINTAINER Karel Fiala <fiala.karel@gmail.com>

RUN apt-get update \
    && apt-get install --yes --no-install-recommends wget ca-certificates \
    && wget https://download.mikrotik.com/routeros/winbox/3.18/winbox.exe \
    && apt-get clean \
    && rm -rf /var/cache/* \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["wine", "winbox.exe"]
