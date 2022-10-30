# docker
Holding area for all docker related changes

First commit
Simple docker file which performs below operations

1. Pull mi roservice image from docker hub https://hub.docker.com/repository/docker/nishsapkal/microservices
2. run rest-service-0.0.1-SNAPSHOT.jar spring boot rest web service project on port 8080


Please follow below steps to create image and access Rest web service on port 9090

1. Build Dockerfile using command >  sudo docker build -t <microservicecontainer> . #(Ensure running from inside same location where Dockerfile exist)
2. Run the comand to start container > docker run -p 9090:8080 <imageId generated in above step>
