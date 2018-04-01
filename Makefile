run:
	docker-compose build
	docker-compose up

images = $(shell docker images --quiet --filter "dangling=true")
clean:
	docker-compose down
	docker rmi $(images)
