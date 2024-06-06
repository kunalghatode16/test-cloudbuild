#!/bin/bash

# Deploy function1
gcloud functions deploy testing-push \
  --runtime python39 \
  --trigger-http \
  --entry-point=main \
  --allow-unauthenticated \
  --source=function1 \
  --region=us-central1

