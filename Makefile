DOCKER_USERNAME := luebken

docker-build: ## Building your custom user interface docker image
	docker build -t $(DOCKER_USERNAME)/currentweather-ui .
    
docker-run-ui: ## Starting UI container to run in the background
	docker run --rm -p 8080:80 --name currentweather-ui $(DOCKER_USERNAME)/currentweather-ui
