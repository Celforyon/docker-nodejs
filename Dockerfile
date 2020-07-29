FROM debian:10

LABEL maintainer="Alexis Pereda <alexis@pereda.fr>"
LABEL version="0.2"
LABEL description="nodejs 10"

COPY ./nodejs /usr/local
