# gpuinfo

## deployment

```bash
kubectl apply -f namespace.yml
kubectl apply -f yaml
```

>  then

```bash
curl localhost:30000
```

> show gpuinfo

```json
{
  "current_device": 0,
  "device_count": 1,
  "device_name": "NVIDIA ...",
  "is_available": true,
  "max_memory_allocated": 0
}
```

> no gpu

```json
{
    "is_available": false
}
```

## delete

```bash
kubectl delete svc gpuinfo -n gpuinfo
kubectl delete deployment gpuinfo -n gpuinfo
kubectl delete namespace gpuinfo
```

