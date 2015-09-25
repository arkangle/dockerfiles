From debian:jessie

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
ruby2.1 \
ruby2.1-dev \
imagemagick \
vim-nox \
less \
build-essential \
&& rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/gem2.1 /usr/bin/gem && ln -s /usr/bin/ruby2.1 /usr/bin/ruby
RUN gem install bundler rake locomotivecms_wagon
RUN mkdir /opt/app
WORKDIR /opt/app
RUN wagon init app -t bootstrap3
