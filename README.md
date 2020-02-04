# INFRA

## Steps apply for GCP:

- `gcloud compute disks create --size=4GB --zone=us-central1-a nfs-disk`
- `kubectl apply -f volumes.yml`
- `kubectl apply -f jenkins.yml`