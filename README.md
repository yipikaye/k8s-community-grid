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


If you're really serious consider running the DaemonSet
```
kubectl apply -f https://raw.githubusercontent.com/yipikaye/k8s-community-grid/master/k8s-community-grid-DaemonSet.yaml
```

## Docker
No Kubernetes? Thats OK.

You can still help cancer patients!

[community-worker](https://hub.docker.com/r/yipikaye/community-worker) on Docker Hub.
```
docker run yipikaye/community-worker
```

## Helm
Helm chart is provided in helm directory

```
helm install k8s-community-grid -n k8s-community-grid --namespace community-workers
```
Optional values you may wish apply with `--set` 
- limits.cpu=4000m
- limits.memory=4096m
- requests.cpu=200m
- requests.memory=512m
- project=<BoincProjectURL>
- accountKey=<yourAccountKey>
- http_server_name: '""'
- http_server_port: '""'
- http_user_name: '""'
- http_user_passwd: '""'
- socks_server_name: '""'
- socks_server_port: '""'
- socks_version: '""'
- socks5_user_name: '""'
- socks5_user_passwd: '""'


## Want to do alternative community work?
k8s-community-grid can be used for all boinc projects such as; Rosetta@Home, LHC@Home, Seti@Home etc. 

All you need do is update the following arguments `args: ["-attach_project", "www.worldcommunitygrid.org", "Account_Key"]`


## Thanks for joining the fight
Early and accurate detection saves lives.

Power the search for molecular markers that will help researchers detect cancer earlier and design more effective treatments.

https://www.worldcommunitygrid.org/

## Troubleshooting
To get logs for all Pods

```
 kubectl logs -f -l app=k8s-community-grid --all-containers -n community-workers
```
