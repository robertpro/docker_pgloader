echo "LOAD DATABASE
     FROM mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@mysql:${MYSQL_INT_PORT}/${ENVIRONMENT}
     INTO postgresql://${PG_USER}:${PG_PASSWORD}@postgres:${PG_INT_PORT}/${ENVIRONMENT}

WITH reset no sequences, prefetch rows = 1000, batch rows = 1000

CAST type char when (= precision 0) to char drop typemod

;" > config
