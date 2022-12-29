echo off

echo **** Starting Docker Desktop.
cmd /c "C:\Program Files\Docker\Docker\Docker Desktop.exe" 

cd ..
echo *** Building the jar file
cmd /c "mvn verify"

cd ./target
cp *.jar ..\docker_context\

cd ..
echo **** Building the Docker image with spring-boot:build-image.
mvn spring-boot:build-image

echo **** Removing the jar in the target directory and in the docker_context directory
del .\docker_context\*.jar 
del .\target\*.jar