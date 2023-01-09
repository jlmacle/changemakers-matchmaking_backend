echo off

cd..

echo **** Building the Docker image with spring-boot:build-image.
cmd /c "mvn spring-boot:build-image"

echo **** Removing the jars in the target directory
del .\target\*.jar*

cd "outside-the-deployment-pipeline_from-build-to-docker-stack-and-DockerHub"
start docker_stack_local.bat

::exit