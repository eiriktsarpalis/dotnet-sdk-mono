DOCKER_HUB_ACCOUNT := eiriktsarpalis
IMAGE_NAME := dotnet-sdk-mono
DOTNET_SDK_TAG := 5.0-buster-slim-amd64
LOCAL_IMAGE_NAME = $(IMAGE_NAME):$(DOTNET_SDK_TAG)
DOCKER_HUB_IMAGE = $(DOCKER_HUB_ACCOUNT)/$(IMAGE_NAME):$(DOTNET_SDK_TAG)

build:
	docker build --build-arg DOTNET_SDK_TAG=$(DOTNET_SDK_TAG) \
				 -t $(LOCAL_IMAGE_NAME) \
				 -f Dockerfile .

push:
	docker tag $(LOCAL_IMAGE_NAME) $(DOCKER_HUB_IMAGE)
	docker push $(DOCKER_HUB_IMAGE)

.DEFAULT_GOAL := build
