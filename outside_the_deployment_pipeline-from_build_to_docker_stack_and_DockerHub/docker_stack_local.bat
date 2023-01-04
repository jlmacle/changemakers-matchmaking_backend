echo off

echo **** Starting the services (backend, PostgreSQL) with docker stack
docker stack deploy -c ./docker-compose-stack-localImages.yml stack_localImages

start dockerHub_push.bat

::exit