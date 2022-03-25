FROM docker:19.03.2 
# TODO: Change this to run something other than Docker in Docker
LABEL "repository"="https://github.com/tendable/create-npmrc"
LABEL "maintainer"="Tendable"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]