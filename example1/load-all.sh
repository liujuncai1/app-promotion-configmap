#!/bin/sh

oc login 10.2.2.2:8443 -u example -p pass
git clone https://github.com/liuxiaoyu-git/ose-app-promotion-configmap.git
cd ose-app-promotion-configmap/example1
oc new-project configmap-example
oc create -f configmap-example.json
oc create -f node-app-deployment.json
oc create -f node-app-build.json
