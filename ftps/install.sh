eval $(minikube docker-env)
docker build -t my-ftps ./ftps/ftpsImage/
kubectl apply -f ./ftps/ftps.yaml
