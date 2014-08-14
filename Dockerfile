#
#
# NodeJS w/ Bower, Grunt a Compass Dockerfile
#
#

# Pull base image
FROM dockerfile/nodejs-bower-grunt

# Install ruby
RUN apt-get -qq update
RUN apt-get -qqy install ruby ruby-dev

# Install sass and compass
RUN gem install compass

# clean APT
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Define mountable directories
VOLUME ["/data"]

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]

