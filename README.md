# DevOps-Python-Application

# Work On Machine
## System : DigitaloceanDroplet 
## OS : Ubuntu 18.04(LTS)x64
## CPU : 2 
## Memory : 2GB
## Technology :  Putty, PuttyGen, Docker, DockerHub, Kubectl, Minikube,VirtualBox,

Set maximum privileges run 
```sudo su ```

Upgrade system
```apt-get upgrade ```

Install KubeCtl
Download latest release
```curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" ``` 

Make the kubectl binary executable.
```chmod +x ./kubectl ``` 

Move the binary in to your PATH.
```sudo mv ./kubectl /usr/local/bin/kubectl ``` 

Test to ensure the version you installed is up-to-date:
```kubectl version --client ``` 

Install Docker
```apt-get install docker.io -y ``` 

Check version
```docker version ``` 

Install MiniKube
Install Minikube via direct download
```curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
  ```

add the Minikube executable to your path:

```sudo mkdir -p /usr/local/bin/ ``` 
```sudo install minikube /usr/local/bin/ ``` 

Check version
```minikube version ``` 

Start minikube
```minikube start ``` 

If VM error occured executed
```minikube start -vm-driver=none ``` 

check minikube status
```minikube status ```

```sudo apt-get install -y conntrack ```

Minikube started

To deploy pod
To go inside minikube
```sudo -i ```

To create first container using kubectl command
```kubectl run mrunalminikube --image=mrunalmoon/node-hello-app --port=8080 ```

Check pods
```kubectl get pods ```

Write dockerfile configuration
To create image from dockerfile
```docker build -it nodejs ```

To check image
```docker images ```

custom docker image hosted on any docker

Create Account on https://hub.docker.com/

login
```docker login ```

Push repository to docker hub
```docker push mrunalmoon/node-hello-app ```

To make private repository
https://hub.docker.com/ -----> select node-hello-app repository ----> setting ----> make repository private

private docker registry created

To set loadbalancer & expose on port 3000
```kubectl expose deployment mrunalminikube -type=LoadBalancer --port=3000 ```

Check loadbalancer on port
```kubectl get services ```

Kubernates loadbalancer set at port 3000

Check pods
```kubectl get pods ```

For 10 replica running
```kubectl scale deployment mrunalminikube --replicas 10 ```

Complete 10 replicas setup

auto scale at average 50% CPU
```kubectl autoscale deployment mrunalminikube --min=1 --max=4 --cpu-percent=50```

To get the available hpa in your cluster.
```kubectl get hpa```

#### Write configuration to setram.yaml
#### Apply changes
```kubectl apply -f setram.yaml```

#### List all resources
```kubectl get all```

auto scale at average 50% CPU and 60% memory set

Replication configuration set
Run replication
```kubectl apply -f replication.yaml ```

Check rplications control
```kubectl describe replicationcontrollers/mrunalminikube ```

Any changes in the source code will not be accepted.
All submissions must be accepted as GitHub repository.
Please include a README file.





