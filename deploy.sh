
#!/bin/bash
# Check which folder is being deployed
gcloud functions deploy function-1 \
    --runtime python311 \
    --trigger-http \
    --source=cicd \
    --region=us-central1

