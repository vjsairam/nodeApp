## Deploying Node.js Application in Kubernetes
#
##### Prerequisites - 
Docker and Minikube running locally
Free Docker Account 
Node.js version 12.18 or later
#
##### Make Scripts - 
###### To Build the application in local - 
make build
###### To Build the Dockerfile - 
make build-docker
###### To Build and Push the Dockerfile to DockerHub - 
make push-docker
###### To Build, Push and Apply the Kubernetes manifests - 
make k8s-deploy
#
##### Description - 
To publish a port for our container, we'll use the --publish flag (-p for short) on the docker run command. The format of the --publish command is [host port]:[container port]. So if we wanted to expose port 8000 inside the container to port 8000 outside the container(host), we would pass 8000:8000 to the --publish flag.
Start the container and expose port 8000 to port 8000 on the host:
```sh
$ docker run -p 8000:8000 -d <IMAGE_NAME>    
```
To check the request details, 
```sh
curl --request GET --url http://localhost:8000/tree
```
Output would be displayed as, 
```sh
{"myFavouriteTree":"Maple"}
```