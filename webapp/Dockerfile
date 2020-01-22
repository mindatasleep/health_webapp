FROM ruby:2.6.5

# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client && apt-get install yarn
RUN apt-get update && apt-get install -y \
  curl \
  build-essential \
  libpq-dev &&\
  curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y nodejs yarn

WORKDIR /myapp
COPY Gemfile Gemfile.lock /myapp/
RUN gem install bundler && bundle install --jobs 20 --retry 5
COPY . /myapp/


# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# CMD ["rails", "server", "-b", "0.0.0.0"]

CMD ["RAILS_SERVE_STATIC_FILES=true", "rails", "server", "-e", "production", "-b", "0.0.0.0"]