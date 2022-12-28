echo off

echo **** Starting Docker Desktop.
cmd /c "C:\Program Files\Docker\Docker\Docker Desktop.exe"
echo Waiting for Docker Desktop to start
timeout /T 60

cd ..
echo *** Building the jar file
mvn build

cd ./target
cp *.jar ..\docker_context\

cd ..
echo **** Building the Docker image with spring-boot:build-image.
mvn spring-boot:build-image

echo **** Removing the jar in the target directory and in the docker_context directory
del .\docker_context\*.jar 
del .\target\*.jar