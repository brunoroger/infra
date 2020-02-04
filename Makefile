install:
	gcloud compute disks create --size=4GB --zone=us-central1-a nfs-disk
	kubectl apply -f volumes.yml
	kubectl apply -f jenkins.yml
remove:
	kubectl delete -f jenkins.yml
	kubectl delete -f volumes.yml
	gcloud compute disks delete nfs-disk