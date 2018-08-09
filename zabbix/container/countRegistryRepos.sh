#!/bin/bash
# Below script is used to calc the repository number of current registry

# The following is a sample output:
# curl -s https://gcr.akscn.io/v2/_catalog
# {"repositories":["google_containers/defaultbackend","google_containers/hyperkube-amd64","google_containers/nginx-ingress-controller","kubernetes-helm/tiller"]}

site="https://gcr.akscn.io/v2/_catalog"
if [ $# -eq 1 ]; then
	site=$1
fi

/usr/bin/curl -s $site | grep repositories | awk -F ',' '{print NF}'
