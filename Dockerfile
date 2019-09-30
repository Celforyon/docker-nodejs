FROM debian:10

LABEL maintainer="Alexis Pereda <alexis@pereda.fr>"
LABEL version="0.2"
LABEL description="nodejs 10"

RUN DEBIAN_FRONTEND=noninteractive apt update \
	&& apt install --no-install-recommends --no-install-suggests -y nodejs \
	&& apt install --no-install-recommends --no-install-suggests -y npm \
	&& apt autoremove --purge -y \
	&& apt autoclean -y \
	&& rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*
