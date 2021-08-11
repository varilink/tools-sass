FROM debian:buster
LABEL maintainer="david.williamson@varilink.co.uk"

RUN                                                                            \
  # Upgrade APT packages
  apt-get update                                                            && \
  apt-get upgrade --yes                                                     && \
  # Install required APT packages
  apt-get install --no-install-recommends --yes                                \
    curl                                                                       \
    software-properties-common                                                 \
    unzip                                                                   && \
  # Add Node.js PPA for the LTS release
  curl -sL                                                                     \
    https://deb.nodesource.com/setup_12.x                                      \
    | bash -                                                                && \
  # Install nodejs
  apt-get install --no-install-recommends --yes                                \
    nodejs                                                                  && \
  # Install sass
  npm install -g sass

COPY sass.sh /usr/local/bin

ENTRYPOINT [ "sass.sh" ]
