volumes= ~/sgoinfre

all: setup
	@docker compose -f docker/docker-compose.yml up --build

setup:
	@mkdir -p $(volumes)

down:
	@docker compose -f docker/docker-compose.yml down

re:
	@docker compose -f docker/docker-compose.yml up --build

clean:
	@docker compose -f docker/docker-compose.yml down
	@docker system prune -f -a

.PHONY: all re down clean