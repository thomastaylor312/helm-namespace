#!/bin/bash

set -eu

echo "Ensuring the namespace ${HELM_NAMESPACE} exists"

echo "apiVersion: v1
kind: Namespace
metadata:
  name: ${HELM_NAMESPACE}
" | kubectl apply -f -

$HELM_BIN $@
