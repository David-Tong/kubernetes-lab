helm install mysql-cluster mysql-operator/mysql-innodbcluster \
    --namespace mysql-lab1 \
    --set credentials.root.user='root' \
    --set credentials.root.password='sakila' \
    --set credentials.root.host='%' \
    --set serverInstances=3 \
    --set routerInstances=1 \
    --set tls.useSelfSigned=true \
    --set datadirVolumeClaimTemplate.storageClassName="nfs-client" \
    --set datadirVolumeClaimTemplate.resources.requests.storage=1Gi

kubectl run -n mysql-lab1 --rm -it myshell --image=container-registry.oracle.com/mysql/community-operator -- mysqlsh 

\connect root@mysql-cluster.mysql-lab1.svc.cluster.local