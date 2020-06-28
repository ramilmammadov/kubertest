#!/usr/bin/env bash
set -x
docker build . -t kubertest-autometed:1.0
docker tag kubertest-autometed:1.0 gcr.io/winter-monolith-281508/kubertest-autometed:1.0
docker push  gcr.io/winter-monolith-281508/kubertest-autometed:1.0