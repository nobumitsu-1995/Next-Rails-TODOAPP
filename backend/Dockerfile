FROM amd64/ruby:3.0.0

ENV BUNDLE_VERSION 2.2.11
ENV APP /usr/src/app

RUN set -x && \
    apt-get update && \
    apt-get install -y netcat && \
    apt-get install -y vim && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends curl less sudo

ENV DOCKERIZE_VERSION v0.6.1
RUN set -x && \
    curl -sL https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/dockerize-linux-amd64-${DOCKERIZE_VERSION}.tar.gz | tar zx -C /usr/local/bin --no-same-owner --no-same-permissions

RUN mkdir $APP
WORKDIR $APP

COPY Gemfile* $APP/
RUN bundle install

COPY . $APP/

CMD ["./bin/server-dev"]