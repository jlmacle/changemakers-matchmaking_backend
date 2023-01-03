:: docker tag local-image:tagname new-repo:tagname
:: docker push new-repo:tagname

@echo off
echo **** Tagging and pushing the image on DockerHub

:: This version assumes to be signed in on Docker Desktop
docker tag changemakers-matchmaking-backend:0.0.1-SNAPSHOT jlmacle/changemakers-matchmaking-backend:0.0.1-SNAPSHOT
docker push jlmacle/changemakers-matchmaking-backend:0.0.1-SNAPSHOT

:: exit