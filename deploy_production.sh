#!/bin/bash
gcloud run deploy travis-ci-example --image ${CONTAINER_TAG}:${TRAVIS_COMMIT} --region us-east1 --platform managed --allow-unauthenticated