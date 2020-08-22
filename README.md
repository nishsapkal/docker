# docker
Holding area for all docker related changes

First commit
Simple docker file which performs below operations

1. Pull PHP image along with apche web server from location devopsedu/webapp
2. Add files from host directory to running image 
3. remove default html page
4. run apache in detached mode as forground process
5. run apachectl service
6. Expose container port 80 to outside world.

Please follow below steps to access the page 

1. Build Dockerfile using command > docker build . #(Ensure running from inside same location where Dockerfile exist)
2. Run the comand to start contianer > docker run -d -p 80:9090 <imageId generated in above step>
