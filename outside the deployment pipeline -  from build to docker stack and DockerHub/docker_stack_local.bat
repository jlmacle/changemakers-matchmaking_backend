echo off

echo **** Starting the services (backend, PostgreSQL) with docker stack
docker stack deploy -c ./docker-compose-stack-localImages.yml stack

start dockerHub_push.bat

::exit