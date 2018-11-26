from redmine:3.4

RUN set -e \
  && apt-get update -y -qq \
  && apt-get install -y -qq \
  build-essential

add Gemfile.local /usr/src/redmine
run bundle install
