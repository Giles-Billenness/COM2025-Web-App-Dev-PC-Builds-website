FROM ruby:2.7.0
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
COPY Gemfile* .
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"] docker build -t rubyapp .

RUN rake db:reset db:migrate db:seed
RUN rails active_storage:update
RUN rails db:migrate