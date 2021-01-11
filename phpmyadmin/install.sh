docker build -t phpmyadmin ./phpmyadmin/phpImage
kubectl apply -f ./phpmyadmin/phpmyadmin.yaml
