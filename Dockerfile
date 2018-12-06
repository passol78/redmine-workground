from redmine:3.4

USER root

RUN set -e \
  && apt-get update -y -qq \
  && apt-get install -y -qq \
  build-essential

USER redmine:redmine

add Gemfile.local /usr/src/redmine
run bundle install --clean
