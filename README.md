# Dockerized pgloader
This repository allows the transfer of mysql data to postgres using dockerized services.
Includes the following containers:
* **postgres:** contains postgres database
* **mysql:** contains mysql database
* **pgloader:** runs the pgloader command. 
The pgloader container may have to be restarted after both postgres and mysql databases are up and running.
## Instructions:
1) Copy the .env-dist file to .env.
2) Change the parameters in .env to your liking.
3) Make sure that the sql script name in the sql_scripts directory matches the
the value of the environment parameter (e.g. replace prod.sql with ${ENVIRONMENT}.sql).
4) run docker-compose up or docker-compose up -d. 
5) use docker-compose exec postgres psql command to check the transfer. 
The postgres schema name is the same as the mysql database.
## Testing:
You can run the docker-compose up -d after cloning the repository and copying 
.env-dist to .env. This will transfer the default prod.sql script to postgres. 
## Developer Team:
* **Lead:** Andreas H Meier, MD MEd Dr med FACS FAAP
## License:
***MIT***
