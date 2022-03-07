 eval $(minikube docker-env)
docker build -t amaratasia/kubernetes-rails-example:latest .
 
docker run -p 3000:3000 amaratasia/kubernetes-rails-example:latest

minikube start
minikube dashboard
sudo minikube tunnel


k apply -f config/kube


 k delete deployment kubernetes-rails-example-deployment

 kubectl apply -f https://github.com/kedacore/keda/releases/download/v2.6.1/keda-2.6.1.yaml

▶ kubectl get pods -n keda
 kubectl logs  -n keda keda-operator-f76d844d7-rgg9m  -c keda-operator -f