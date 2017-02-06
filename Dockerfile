FROM ruby:2.4.0
COPY ./Gemfile.lock ./
COPY ./Gemfile ./
RUN bundle install --without test development
COPY ./ ./
