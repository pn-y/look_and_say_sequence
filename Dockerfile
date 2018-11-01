FROM ruby:2.5.3

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install --jobs 3

COPY Rakefile Rakefile

ADD . /app

CMD bundle exec rake
