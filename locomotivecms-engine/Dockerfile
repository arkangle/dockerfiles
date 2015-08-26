From debian:jessie

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
ruby2.1 \
ruby2.1-dev \
build-essential \
git \
libxml2 \
libxml2-dev \
libxslt-dev \
libcurl4-openssl-dev \
imagemagick \
&& rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/gem2.1 /usr/bin/gem && ln -s /usr/bin/ruby2.1 /usr/bin/ruby && gem install rails --version=3.2.21
RUN mkdir -p /opt
RUN cd /opt && rails new app --skip-active-record --skip-test-unit --skip-javascript --skip-bundle
COPY Gemfile /opt/app/Gemfile
RUN cd /opt/app && bundle install
RUN cd /opt/app && bundle exec rails g locomotive:install
COPY mongoid.yml /opt/app/config/mongoid.yml
EXPOSE 8080
WORKDIR /opt/app
CMD bundle exec unicorn_rails
