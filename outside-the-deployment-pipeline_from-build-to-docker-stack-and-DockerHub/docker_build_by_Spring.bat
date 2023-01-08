echo off

cd..

echo **** Building the Docker image with spring-boot:build-image.
cmd /c "mvn spring-boot:build-image"

echo **** Removing the jars in the target directory
del .\target\*.jar*

cd "outside_the_deployment_pipeline-from_build_to_docker_stack_and_DockerHub"
start docker_stack_local.bat

::exit