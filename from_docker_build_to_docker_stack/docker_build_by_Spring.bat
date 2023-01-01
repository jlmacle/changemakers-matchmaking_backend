echo off

cd..

echo **** Building the Docker image with spring-boot:build-image.
cmd /c "mvn spring-boot:build-image"

echo **** Removing the jars in the target directory
del .\target\*.jar*

cd docker_compose_files
start docker_stack_local.bat

::exit