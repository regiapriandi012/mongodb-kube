# Build MongoDB Instance on Kubernetes
Build a mongodb instance on a kubernetes cluster using a statefulset configuration, it works for microservice-based applications on kubernetes to be able to use mongodb instances without having to create a database in the cloud.

## Technology Used
![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)

## Configure User
```
$ cd mongodb-instance-kubernetes
$ vi secret.yaml
```
## Apply to Kubernetes Cluster
```
$ cd mongodb-instance-kubernetes
$ kubectl apply -f .
```
## Access the Instance
```
$ kubectl get pods
NAME                              READY   STATUS    RESTARTS        AGE
mongodb-0                         1/1     Running   1 (13m ago)     6h44m
$ kubectl exec -it mongodb-0 -- sh
# mongo
MongoDB shell version v4.0.8
connecting to: mongodb://127.0.0.1:27017/?gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("151c79c8-f6bc-44de-bae0-b8c2948e2b7f") }
MongoDB server version: 4.0.8
>
```
## Access the Service
```
$ kubectl get svc
NAME         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                          AGE
mongodb      NodePort    10.101.102.187   <none>        27017:30005/TCP                  2d12h
```
## Connect the instance in MongoDB Compass
<img width="960" alt="image" src="https://user-images.githubusercontent.com/69528812/204311007-8b02d567-a2e5-48eb-887c-e45a2b3b0960.png">

## Successfuly Connected on MongoDB Compass
<img width="960" alt="image" src="https://user-images.githubusercontent.com/69528812/204311267-e0d49def-1dcb-4afe-87c1-ee99e052fc2f.png">

## Instance Perfomance
<img width="960" alt="image" src="https://user-images.githubusercontent.com/69528812/204311552-62b9911c-10c0-4059-8df3-9d6c8c50c2f7.png">
