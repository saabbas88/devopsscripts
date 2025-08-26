f# Installation of sonar-qube in docker -> Ubuntu linux
sudo apt update -y 
sudo apt install docker -y
sudo service docker start
sudo usermod -aG docker ubuntu
exit

Run Sonarqube using docker image :
docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube:lts-community

