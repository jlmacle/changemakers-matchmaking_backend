echo off

echo **** Starting the services (backend, PostgreSQL) with docker stack
docker pull postgres:alpine
docker stack deploy -c ./docker-compose-backend_stack-local_images.yml stack_localImages

start dockerHub_push.bat

::exit