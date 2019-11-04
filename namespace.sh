#!/bin/bash

set -eu

dryRun=""
for i in $@; do
    if [ "$i" = --dry-run ]; then
        dryRun=1
        break
    fi
done

echo "Ensuring the namespace ${HELM_NAMESPACE} exists"

if [ -n "$dryRun" ]; then
    echo "DRY-RUN: no operations will really be performed"
else

echo "apiVersion: v1
kind: Namespace
metadata:
  name: ${HELM_NAMESPACE}
" | kubectl apply -f -

fi

$HELM_BIN $@
