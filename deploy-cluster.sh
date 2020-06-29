kubectl delete deployments --all
kubectl delete pods --all
kubectl delete services --all
kubectl delete secrets --all
docker build -t app-deployment .

kubectl apply -f secrets.yaml
kubectl create -f app-deployment.yaml
kubectl create -f mongo-deployment.yaml

kubectl expose deployment app-deployment --port=8080 --type=NodePort
kubectl expose deployment mongo --port=27017 --type=NodePort