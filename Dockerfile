FROM ruby:2.5-slim

RUN mkdir /app
WORKDIR /app

ADD . /app

RUN gem install bundler && bundle install

EXPOSE 4567

CMD ["ruby", "app.rb"]
