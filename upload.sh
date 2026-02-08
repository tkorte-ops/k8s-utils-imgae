#!/bin/bash
source ./.pass
echo "$CI_REGISTRY_PASSWORD" | docker login $CI_REGISTRY -u $CI_REGISTRY_USER --password-stdin
docker build -t utils -t tkay11001/k8s-utils:v1.0 -t tkay11001/k8s-utils:latest . && \
docker push tkay11001/k8s-utils:v1.0 && \
docker push tkay11001/k8s-utils:latest
