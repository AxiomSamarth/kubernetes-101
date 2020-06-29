# kubernetes-101
This repository has the exercise files for getting started with K8s

## Steps to deploy the cluster

- Clone this repository on to your machine.
- Start the Docker for Desktop or MiniKube.
- Run `sh deploy-cluster.sh` and it will deploy the cluster with 2 pods. One pod for the Gita API and the other pod for the mongoDB.

## Files and functions

- `app-deployment.yaml` is the deployment yaml file with the declarative for the K8s with the desired state of the Gita.io API
- `mongo-deployment.yaml` is the deployment yaml file for the mongodb pod.
- 'secrets.yaml` is the secrets yaml file to create the K8s secrets (some sensitive information) employed by clusters.
- `Dockerfile` is the blueprint for the container `app-deployment` which hosts the Gita.io API

## Official documentation of the Gita.io API

The official Swagger documentation of the gita.io API for the developers is available at [gita.io Documentation](https://app.swaggerhub.com/apis-docs/AxiomSamarth/gita.io/1.0.0)