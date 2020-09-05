#!/bin/bash
gcloud auth activate-service-account ${GOOGLE_ACCOUNT} --key-file=./devops-flow-testing.json
gcloud auth configure-docker
docker login -u _json_key --password-stdin https://gcr.io < devops-flow-testing.json
gcloud run deploy ${TRAVIS_BUILD_ID}-staging --image ${CONTAINER_TAG}:${TRAVIS_COMMIT} --region us-east1 --platform managed --allow-unauthenticated