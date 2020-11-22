## Deploy sys-stats project with Docker and docker-compose
This project can be easily built using docker-compose both for front-end react app and backend python flask using gunicorn on Nginix web server.

From the root folder run the following command:
`sudo docker-compose up --build`

Visit `http://localhost:80/` and check CPU and RAM statistics in the webpage. The webpage appears as follows:
![](./img/readme.jpg)

## Deploy sys-stats project with Kubernetes
### Prerequisites
1. `Install minikube` to act as kubernetes cluster
2. `Install kompose` to easily convert docker-compose.yml file to kubernetes deployment and service manifest files.

### Setting up minikube
1. Download and install minikube
2. Start the minkube cluster with the following command:
   `minikube start`

### Setting up kompose
1. Download and install kompose
2. Convert Docker-compose file to kubernetes deployment and service manifest files, run the following command from the directory of the docker-compose file:
   `kompose convert`
Note: Few changes are required after converting the docker-compose file to kubernetes files, like api-version, selector, labels, etc.,
   Or
1. Navigate to k8s folder, there the converted files with required modifications is placed.

### Launching app with kubernetes
1. From k8s folder, run the following command:
 kubectl create -f backend-service.yaml,backend-deployment.yaml,backend-claim0-persistentvolumeclaim.yaml,frontend-service.yaml,frontend-deployment.yaml,frontend-claim0-persistentvolumeclaim.yaml 
2. Visit `http://minikube_ip:80/` and check CPU and RAM statistics in the webpage. The webpage appears as follows:
![](./img/readme.jpg)
