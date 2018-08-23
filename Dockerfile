FROM debian:9

LABEL maintainer="Alexis Pereda <alexis@pereda.fr>"
LABEL version="0.1"
LABEL description="nodejs 8"

RUN DEBIAN_FRONTEND=noninteractive apt update \
	&& apt install --no-install-recommends --no-install-suggests -y \
		ca-certificates curl gnupg \
	&& curl -sL https://deb.nodesource.com/setup_8.x|bash - \
	&& apt install --no-install-recommends --no-install-suggests -y \
		nodejs npm \
	&& apt autoremove --purge -y \
	&& apt autoclean -y \
	&& rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*
