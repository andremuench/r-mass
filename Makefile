IMAGE := r-mass

build:
	DOCKER_BUILDKIT=1 docker build -t $(IMAGE) .
