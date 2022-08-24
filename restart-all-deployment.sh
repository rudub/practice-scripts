#rollout restart all deployment in all namespaces
#!/bin/bash
namespaces=`kubectl get ns | tail -n +2 | cut -d ' ' -f1`
for ns in $namespaces    
do
    echo `kubectl rollout restart deployment -n $ns` 
done
