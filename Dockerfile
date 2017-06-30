FROM ruby:2.4.1
MAINTAINER @realink

RUN apt-get update && apt-get install -qy nginx curl nodejs vim

WORKDIR /usr/src/app

RUN mkdir -p tmp/pids tmp/sockets tmp/cache tmp/sessions
RUN mkdir log

COPY . /usr/src/app
RUN ["/bin/sh", "-c", "bundle install"]

# Precompile assets
RUN bundle exec rake assets:precompile --trace

# Publish port 80
EXPOSE 3000
