# Dockerfile for Node using Sails.js on Ubuntu
# 
# Base Image: Official Repository - Buildpack
# https://hub.docker.com/_/buildpack-deps/

# TODO: Move away from buildpack and just install what we need/want.
FROM buildpack-deps:trusty
MAINTAINER Paul Saumets <psaumets@everydaybloke.com>

# Taken from Official Repository - Node
# https://hub.docker.com/_/node/

# Node does not come with a deployment built on Ubuntu (yet?)

ENV NPM_CONFIG_LOGLEVEL info

# Adjust these to install a different version(s).
# We require Ruby for SASS support.
ENV NODE_VERSION 5.1.0
ENV RUBY_VERSION 2.2.3

# GPG key setup to ensure our install is legit.
# gpg keys listed at https://github.com/nodejs/node
RUN set -ex \
  && for key in \
    9554F04D7259F04124DE6B476D5A82AC7E37093B \
    94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
    0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93 \
    FD3A5288F042B6850C66B31F09FE44734EB7990E \
    71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
    DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
  ; do \
    gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; \
  done

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
  && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
  && gpg --verify SHASUMS256.txt.asc \
  && grep " node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c - \
  && tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc

# Let's get SASSy

RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && \
	git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN ~/.rbenv/plugins/ruby-build/install.sh
ENV PATH /root/.rbenv/bin:$PATH
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && \
	echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && \
	echo 'eval "$(rbenv init -)"' >> ~/.bashrc

RUN rbenv install $RUBY_VERSION
RUN bash -l -c 'rbenv global $RUBY_VERSION'

RUN echo 'eval "$(rbenv global)"' >> .wtf 

# No docs please.
RUN echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc

# Execute in bash since by default docker uses Bourne shell (sh)
RUN bash -l -c 'gem install sass'
RUN bash -l -c 'gem install compass'

# cleanup
RUN apt-get clean

# Sailing away
RUN npm install -g sails nodemon gulp
