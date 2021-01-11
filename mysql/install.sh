docker build -t mysql ./mysql/mysqlImage/
kubectl apply -f ./mysql/mysql.yaml
