FROM ruby:2.6.6-alpine3.13

COPY . .

ENTRYPOINT ["ruby", "app.rb"]