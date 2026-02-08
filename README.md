# Simple static site

A simple two-page static site served with nginx.

Display your name by setting the `DEV_NAME` environment variable.

Preview of the site with no dev set: https://markdurrheim.github.io/simple-static-site/

Pre-built Docker image: https://hub.docker.com/r/durrheimmark/simple-static-site

## Docker
Build the image
```shell
docker build -t simple-static-site:1.1 .
```

Run in Docker
```shell
docker run --name=simple-static-site -e DEV_NAME="YOUR NAME" -p 9082:8080 simple-static-site:1.1
```

Open in browser (PowerShell)
```shell
start http://localhost:9082
```

## Kubernetes

Apply configuration to create a deployment and service to expose it
```shell
kubectl apply -f .\deploy.yaml

# OR for OpenShift

oc apply -f .\deploy.yaml -f .\openshift-route.yaml
```

Enable port-forwarding for the service at http://localhost:9082
```shell
kubectl port-forward service/simple-static-site-service 9082:8080
```

Minikube can port-forward and open with the command
````shell
minikube service simple-static-site-service
````
