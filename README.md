# Docker compose mission
### The mission:
Create docker compose yaml

One is mysql database with volume that stores the mysql data on your computer second one is docker image with script that waits for mysql to init (wait for it script) .

when mysql is up , that script should perform an sql query that inserts to DATE table , time stamp when it ran.

while script waits for mysql , please output waiting log , to log file , that also stored on your computer on a different folder (from database)

if query run successfully , container can exit 0 , if didn't container will exit with code 1 -> restart

also add a docker with static website , html file , that getting loaded from repo folder

### Password are in the .env file
# Install and run
you need to install Docker on your machine >> https://docs.docker.com/get-docker/
you need to install Docker-compose on your machine >> https://docs.docker.com/compose/install/
download the repo, enter to the folder via the terminal and send the commend "docker-compose up -d