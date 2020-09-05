#!/bin/bash
gcloud run deploy ${TRAVIS_BUILD_ID}-staging --image ${CONTAINER_TAG}:${TRAVIS_COMMIT} --region us-east1 --platform managed --allow-unauthenticated