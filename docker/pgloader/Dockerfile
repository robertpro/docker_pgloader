FROM dimitri/pgloader:latest

# capture arguments from docker-compose.yml
ARG ENVIRONMENT
ARG MYSQL_PASSWORD
ARG MYSQL_PORT_INT
ARG MYSQL_USER
ARG PG_DB
ARG PG_PASSWORD
ARG PG_PORT_INT
ARG PG_USER

## Add the wait script to the image and make executable
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.5.0/wait /wait
RUN chmod +x /wait

## Create the pgloader shell script and make executable
## this is needed to get the parameter values into the script
RUN echo "pgloader mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@mysql:${MYSQL_INT_PORT}/${ENVIRONMENT} \
postgresql://${PG_USER}:${PG_PASSWORD}@postgres:${PG_INT_PORT}/${PG_DB}" > /pgloader.sh
RUN chmod +x /pgloader.sh

## Launch the wait tool and then the pgloader command
CMD /wait && /pgloader.sh
