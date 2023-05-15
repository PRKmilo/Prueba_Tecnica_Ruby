FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
run mkdir /prueba_tecnica
workdir /prueba_tecnica
copy Gemfile /prueba_tecnica/Gemfile
copy Gemfile.lock /prueba_tecnica/Gemfile.lock
RUN bundle install
copy . /prueba_tecnica

