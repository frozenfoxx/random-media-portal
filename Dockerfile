# Base image
FROM ruby:alpine

# Information
LABEL maintainer="FrozenFOXX <frozenfoxx@churchoffoxx.net>"

ENV APP_HOME /app
ENV HOME /root
ENV PORT 4567

WORKDIR ${APP_HOME}

# Install gems
COPY Gemfile* ${APP_HOME}/
RUN bundle install --system

# Add source
COPY . /app

EXPOSE ${PORT}

CMD ["rackup", "-o 0.0.0.0", "-p ${PORT}"]
