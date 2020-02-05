install:
	kubectl apply -f volumes.yml
	kubectl apply -f jenkins.yml
remove:
	kubectl delete -f jenkins.yml
	kubectl delete -f volumes.yml