helm repo add mongodb https://mongodb.github.io/helm-charts


kubectl apply -f https://raw.githubusercontent.com/mongodb/mongodb-kubernetes/1.5.0/public/crds.yaml


helm upgrade --install mongodb-kubernetes-operator mongodb/mongodb-kubernetes \
--namespace mongodb-lab2 \
--create-namespace


kubectl -n mongodb-lab2 \
create secret generic sharded-mongodb \
--from-literal="publicKey=<publicKey>" \
--from-literal="privateKey=<privateKey>"
