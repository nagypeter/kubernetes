#!/bin/sh

export NAMESPACE=shared-ingress

kubectl delete namespace $NAMESPACE --ignore-not-found=true

kubectl create namespace $NAMESPACE

kubectl create -f https://raw.githubusercontent.com/nagypeter/kubernetes/master/ingress/nginx-default-backend-deployment.yaml -n=$NAMESPACE

#kubectl create -f https://raw.githubusercontent.com/nagypeter/kubernetes/master/ingress/nginx-default-backend-service.yaml

#kubectl create -f https://raw.githubusercontent.com/nagypeter/kubernetes/master/ingress/nginx-ingress-controller-deployment.yaml

#kubectl create -f https://raw.githubusercontent.com/nagypeter/kubernetes/master/ingress/nginx-ingress-controller-service.yaml