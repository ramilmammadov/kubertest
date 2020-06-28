#!/usr/bin/env bash
set -x
docker build . -t kubertest-automated1
docker tag kubertest-automated1 gcr.io/winter-monolith-281508/kubertest-automated:1.0
docker push  gcr.io/winter-monolith-281508/kubertest-automated:1.0