#!/usr/bin/env bash
set -x
docker build . -t java-k8s-gradle-gcloud-helm:1.0
docker tag java-k8s-gradle-gcloud-helm:1.0 gcr.io/winter-monolith-281508/java-k8s-gradle-gcloud-helm:1.0
docker push  gcr.io/winter-monolith-281508/java-k8s-gradle-gcloud-helm:1.0