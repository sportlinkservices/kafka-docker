version=2.0.0p4
image=docker-registry.sportlink.com/kafka
repo=github.com/sportlinkservices/kafka-docker
label=kafka
default: builddocker

builddocker:
	docker build --rm=true --tag=$(image):$(version) -f ./Dockerfile .

push:
	docker push $(image):$(version)