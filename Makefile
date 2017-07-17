IMAGE=pierpaololucarelli/reana-env-ffmpeg

all:
	@echo "Usage: make <action> where action is build, test, or push."

build: Dockerfile
	docker build -t $(IMAGE) .

test:
	docker run -i -t --rm $(IMAGE) root-config --version | grep -q ^6

push:
	docker push $(IMAGE)
