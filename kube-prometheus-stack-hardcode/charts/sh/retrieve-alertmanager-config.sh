#!/usr/bin/env bash

kubectl -n monitoring get secret alertmanager-kube-prometheus-stack-alertmanager \
-o jsonpath="{.data.alertmanager\.yaml}" | base64 -d
