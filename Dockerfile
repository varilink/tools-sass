FROM varilink/npm
LABEL maintainer="david.williamson@varilink.co.uk"

RUN npm install -g sass

ENTRYPOINT [ "sass" ]
