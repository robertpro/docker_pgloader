FROM alpine:3.14

## Add the wait script to the image and make executable
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.5.0/wait /wait
RUN chmod +x /wait

# Install pgloader instructions from here: https://github.com/robbash/pgloader/commit/e8997398f9c70126004b3a647b708455f19dc5ec
RUN apk add curl make sbcl unzip sqlite-libs gawk freetds-dev libzip-dev

RUN curl -fsSLO https://github.com/dimitri/pgloader/archive/v3.6.3.tar.gz

RUN tar xvf v3.6.3.tar.gz \
  && cd pgloader-3.6.3 \
  && make pgloader \
  && mv ./build/bin/pgloader /usr/local/bin/ \
  && pgloader --version

## Launch the wait tool and then the pgloader command
CMD /wait && pgloader /config
