FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.7.1

RUN gem install authy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["authy-api-console"]
CMD ["--help"]
