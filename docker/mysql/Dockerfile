FROM mysql:5.7

# capture environment arg from docker-compose.yml
ARG ENVIRONMENT

# create schema and add data based on app environment
COPY sql_scripts/${ENVIRONMENT}.sql /docker-entrypoint-initdb.d/10_${ENVIRONMENT}.sql
