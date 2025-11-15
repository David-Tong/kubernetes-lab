kubectl create namespace lab3

helm install nfs-subdir-external-provisioner \
nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--namespace lab3 \
--set nfs.server=nfs-server \
--set nfs.path=/data/nfs \
--set storageClass.onDelete=true

