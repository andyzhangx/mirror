```
kubectl create -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-nginx.yaml
kubectl create -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-httpd.yaml
kubectl create -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-mongo.yaml
kubectl create -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-postgres.yaml

kubectl delete -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-nginx.yaml
kubectl delete -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-httpd.yaml
kubectl delete -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-mongo.yaml
kubectl delete -f https://raw.githubusercontent.com/andyzhangx/mirror/master/perf/registry-perftest-postgres.yaml
```
