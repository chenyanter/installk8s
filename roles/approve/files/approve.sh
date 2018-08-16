#!/bin/bash
kubectl get csr|grep 'Pending' |awk -F " " '{print $1}'|while read line
do
  kubectl certificate approve $line
done
