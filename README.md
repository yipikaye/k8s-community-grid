# k8s-community-grid

## Kubernetes Deployment For World Community Grid

This is a simple way to run the World Community Grid on Kubernetes.

This project exists to make it easier to run World Community Grid on cloud deployments to further cancer research.

Helping to improve the odds for cancer patients simple as running the following:
```
kubectl apply -f https://raw.githubusercontent.com/yipikaye/k8s-community-grid/master/k8s-community-grid.yaml
kubectl scale deployment community-workers -n community-workers --replicas=X
```
* where X replicas = number of worker nodes or Pods you want to run

## Docker
No Kubernetes? Thats OK.

You can still help cancer patients!

[community-worker](https://hub.docker.com/r/yipikaye/community-worker) on Docker Hub.
```
docker pull yipikaye/community-worker
```

## Thanks for joining the fight
Early and accurate detection saves lives.

Power the search for molecular markers that will help researchers detect cancer earlier and design more effective treatments.

https://www.worldcommunitygrid.org/
