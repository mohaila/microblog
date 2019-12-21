.PHONY: init debug release docker swarm k8s

init:
	@sh scripts/init.sh

debug: init
	@sh scripts/build-debug.sh

release: init
	@sh scripts/build-release.sh	

docker: release
	@sh scripts/docker-images.sh	


