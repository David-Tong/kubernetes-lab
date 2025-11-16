kubectl create namespace nfs-pv-provisioner


helm install nfs-subdir-external-provisioner \
nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--namespace nfs-pv-provisioner \
--set nfs.server=nfs-server \
--set nfs.path=/data/nfs \
--set storageClass.onDelete=true
