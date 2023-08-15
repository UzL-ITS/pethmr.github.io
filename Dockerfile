FROM ubuntu:22.04

LABEL maintainer="x41"

ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y --no-install-recommends \
		imagemagick \
		libmagickcore-dev \
		pkg-config \
		sudo \
		ruby-bundler \
		ruby-dev \
		libssl-dev \
		build-essential \
		vim-tiny \
		libvips42 \
		libvips-tools \
		libcurl4 \
    	git \
	&& apt-get autoremove \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/ 

ARG USER_NAME=jekyll
ARG UID=1000
ARG GID=1000

RUN apt-get update && apt-get install -y locales locales-all
RUN locale-gen en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN groupadd -g $GID $USER_NAME && useradd -u $UID -g $GID -ms /bin/bash $USER_NAME

USER jekyll

RUN mkdir /home/jekyll/page && mkdir /home/jekyll/.ruby

ENV GEM_HOME=/home/jekyll/.ruby
ENV PATH=${PATH}:/home/jekyll/.ruby/bin

RUN bundle config set path /home/jekyll/.ruby/gems

RUN mkdir /home/jekyll/dependency_prep
COPY Gemfile /home/jekyll/dependency_prep

RUN cd /home/jekyll/dependency_prep \
	&& bundle install \
	&& bundle update --bundler \
	&& bundler install

WORKDIR /home/jekyll/page

CMD ["bash"]
