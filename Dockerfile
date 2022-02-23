FROM fialakarel/wine

MAINTAINER Karel Fiala <fiala.karel@gmail.com>

RUN apt-get update \
    && apt-get install --yes --no-install-recommends wget ca-certificates \
    && wget https://download.mikrotik.com/winbox/3.35/winbox64.exe \
    && apt-get clean \
    && rm -rf /var/cache/* \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["wine64-stable", "winbox64.exe"]
