FROM ruby:2.4.1

RUN gem install danger

ENV WORK_DIR="/danger"

RUN danger --version

VOLUME ${WORK_DIR}
WORKDIR ${WORK_DIR}

ENTRYPOINT ["danger"]