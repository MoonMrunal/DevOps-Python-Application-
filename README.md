# DevOps-Python-Application

# DevOpstask

# Solution
## System : DigitaloceanDroplet 
## Tier :  3
## OS : Ubuntu 20.04(LTS)x64
## CPU : 2 
## Memory : 2GB
## Technology stack used :  Putty, PuttyGen, Docker, DockerHub, Kubectl, Minikube,VirtualBox,

##### To Maximum Privileges 
```sudo su ```

##### Updating System
```apt-get upgrade ```

##### To KubeCtl installing
```curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" ``` 

##### To kubectl binary executable.
```chmod +x ./kubectl ``` 

##### Moving binary in to your PATH.
```sudo mv ./kubectl /usr/local/bin/kubectl ``` 

##### Test to ensure the version you installed is up-to-date:
```kubectl version --client ``` 

##### Installing Docker in The System
```apt-get install docker.io -y ``` 

##### Check version
```docker version ``` 

##### Installing MiniKube
```curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
  ```
##### To adding Minikube executable to your path:

```sudo mkdir -p /usr/local/bin/ ``` 
```sudo install minikube /usr/local/bin/ ``` 

##### Check version
```minikube version ``` 

##### Start minikube
```minikube start ``` 

##### If VM error occured executed
```minikube start -vm-driver=none ``` 

##### check minikube status
```minikube status ```

```sudo apt-get install -y conntrack ```

##### Minikube started

##### Deploy pod
##### Go To inside minikube
```sudo -i ```

##### Create a container using kubectl command
```kubectl run hello-minikube --image=vaibhavdanao/node-hello-app --port=8080 ```

##### Check pods
```kubectl get pods ```

##### To 10 replica running
```kubectl scale deployment hello-minikube --replicas 10 ```

##### Task 2 completed

##### Create docker file
```vi Dockerfile ```

##### Write to the file
```
FROM ubuntu

WORKDIR "/app"

RUN apt-get update \
 && apt-get dist-upgrade -y \
 && apt-get clean \
 && echo 'Finished installing dependencies'

RUN npm install --production

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

USER node

CMD ["npm", "start"]
```

##### To create image from dockerfile
```docker build -it nodejs ```

##### To check image
```docker images ```

##### Task 4 completed

##### Create Account on https://hub.docker.com/

##### login
```docker login ```

##### Push repository to docker hub
```docker push vaibhavdanao/node-hello-app ```

##### To make private repository
https://hub.docker.com/ -----> select node-hello-app repository ----> setting ----> make repository private

##### Task 1 completed

##### Auto Scaling at average 50% CPU
```kubectl autoscale deployment hello-minikube --min=1 --max=4 --cpu-percent=50```

##### Get the available hpa in your cluster.
```kubectl get hpa```

##### Auto Scaling at average 60% memory
``` vi memory.yaml```

#### Write to file
```
apiVersion: autoscaling/v2beta1
kind: HorizontalPodAutoscaler
metadata:
  name: hello-minikube
spec:
  maxReplicas: 4
  minReplicas: 1
  scaleTargetRef:
    apiVersion:
    kind: Deployment
    name: hello-minikube
  metrics:
  - type: Resource
    resource:
      name: memory
      targetAverageUtilization: 60
```

#### To Apply changes
```kubectl apply -f memory.yaml```

#### Listed Resources
```kubectl get all```

##### Task 5 completed

##### Set a LoadBalancer & Expose on Port 3000
```kubectl expose deployment hello-minikube -type=LoadBalancer --port=3000 ```

##### Check LoadBalancer on Port
```kubectl get services ```

##### Task 6 completed

##### Replication control for 7 replica in .yaml
```vi replication.yaml ```

##### Write to file 
```
apiVersion: v1
kind: ReplicationController
metadata:
  name: hello-minikube
spec:
  replicas: 7
  selector:
    app: hello-minikube
  template:
    metadata:
      name: hello-minikube
      labels:
        app: hello-minikube
    spec:
      containers:
      - name: hello-minikube
        image: hello-minikube
        ports:
        - containerPort: 3000
```
##### Run replication
```kubectl apply -f replication.yaml ```

##### Check rplications control
```kubectl describe replicationcontrollers/hello-minikube ```

##### Task 7 completed
##### Task 9, 10, 11 completed





