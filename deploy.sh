
#!/bin/bash
# Check which folder is being deployed
  gcloud functions deploy function-1 \
    --runtime python311 \
    --trigger-http \
    --source= .
    --region=us-central1

<<com
 if [ "$1" == "." ]; then
  gcloud functions deploy function-1 \
    --runtime python311 \
    --trigger-http \
    --source= .
    --region=us-central1
elif [ "$1" == "cicd" ]; then
  gcloud functions deploy function-2 \
    --runtime python311 \
    --trigger-http \
    --source=cicd \
    --region=us-central1
elif [ "$1" == "cide-folder1" ]; then
  gcloud functions deploy function-3 \
    --runtime python311 \
    --trigger-http \
    --source=cicd-folder1 \
    --region=us-central1
else
  echo "Unknown function. Exiting."
  exit 1
fi
com
