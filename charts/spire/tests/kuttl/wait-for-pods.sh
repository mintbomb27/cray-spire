#!/bin/bash
i=0
while [ "$(kubectl get pods -n spire --no-headers | grep -cv 'Running')" -ne 0 ]; do
  sleep 10
  if [ $i -gt 20 ]; then
    echo "All spire pods are not in a running state after 200 seconds."
    exit 1
  fi
  ((i++))
done
