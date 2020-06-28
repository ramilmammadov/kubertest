#!/usr/bin/env bash
set -x
docker build . -t kubertest:2.0
docker tag kubertest:2.0 gcr.io/winter-monolith-281508/kubertest:2.0
docker push  gcr.io/winter-monolith-281508/kubertest:2.0