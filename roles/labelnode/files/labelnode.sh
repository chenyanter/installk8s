#!/bin/bash
kubectl get nodes|grep Ready|awk -F " " '{print $1}'|while read line
do
   kubectl label node $line $1
done
exit 0
