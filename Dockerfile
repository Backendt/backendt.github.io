FROM ruby:bookworm

WORKDIR /opt/feur
COPY . .
EXPOSE 4000

RUN bundle install

WORKDIR /mnt
CMD ["bundle", "exec", "jekyll", "s", "-H", "0.0.0.0"]
