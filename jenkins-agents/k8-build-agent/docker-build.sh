#!/usr/bin/env bash
set -x
docker build . -t gcloud-k8s-gradle-gcloud-helm:1.0
docker tag gcloud-k8s-gradle-gcloud-helm:1.0 gcr.io/winter-monolith-281508/gcloud-k8s-gradle-gcloud-helm:1.0
docker push  gcr.io/winter-monolith-281508/gcloud-k8s-gradle-gcloud-helm:1.0