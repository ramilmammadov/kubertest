#!/usr/bin/env bash
set -x
docker build . -t kubertest:9.0
docker tag kubertest:9.0 gcr.io/winter-monolith-281508/kubertest:9.0
docker push  gcr.io/winter-monolith-281508/kubertest:9.0