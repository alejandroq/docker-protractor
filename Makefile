DOCKER_HUB_USER := alejandroq
 CONTAINER_NAME := docker-protractor

all: build

update: tag push

build:
	docker build -t $(DOCKER_HUB_USER)/$(CONTAINER_NAME) -f src/Dockerfile .

tag: 
	docker tag $(DOCKER_HUB_USER)/$(CONTAINER_NAME) $(DOCKER_HUB_USER)/$(CONTAINER_NAME):$(TAG)

push:
	docker push $(DOCKER_HUB_USER)/$(CONTAINER_NAME):$(TAG)