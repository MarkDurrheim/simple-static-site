# Simple static site

A simple two-page static site served with nginx.

## Docker
Build the image
```shell
docker build -t simple-static-site:1.0.0 .
```

Run in Docker
```shell
docker run --name=simple-static-site -P simple-static-site:1.0.0
```

Open in browser
```shell
docker container port simple-static-site 80 | Select-String -Pattern ':\d+' |  ForEach-Object { Start-Process "http://localhost$($_.Matches.Value)" }
```

## Kubernetes

Apply configuration to create a deployment and service to expose it
```shell
kubectl apply -f .\deploy-simple-static-site.yaml
```

Enable port-forwarding for the service at http://localhost:9082
```shell
kubectl port-forward service/simple-static-site-service 9082:80
```

Minikube can port-forward and open with the command
````shell
minikube service simple-static-site-service
````
