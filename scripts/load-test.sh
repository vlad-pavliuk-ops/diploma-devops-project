#!/bin/bash

set -e

echo "Starting load test for backend..."

kubectl delete pod backend-load-test -n diploma --ignore-not-found

kubectl run backend-load-test \
  --rm -it \
  --restart=Never \
  --image=busybox:1.36 \
  --namespace=diploma \
  -- /bin/sh -c "while true; do wget -q -O- http://backend:5000/api/hello > /dev/null; done"