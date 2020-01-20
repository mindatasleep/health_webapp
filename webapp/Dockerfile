FROM ruby:2.6.5

RUN apk update && apk add build-base nodejs postgresql-dev
# RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5
COPY . .

ENTRYPOINT ["rails", "s"]