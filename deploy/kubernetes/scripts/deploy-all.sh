#!/bin/bash

cd /home/master/microservices-demo/deploy/kubernetes/config

kubectl create namespace sock-shop
kubectl create configmap mongodb-configmap --from-file=mongod.conf -n sock-shop
kubectl apply -f redis-configmap.yaml -n sock-shop
kubectl apply -f /home/master/microservices-demo/deploy/kubernetes/manifests-all/ -n sock-shop
kubectl apply -f /home/master/microservices-demo/deploy/kubernetes/manifests-loadtest/loadtest-dep.yaml