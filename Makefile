all: 
	@docker compose -f docker/docker-compose.yml up --build


down:
	@docker compose -f docker/docker-compose.yml down

re:
	@docker compose -f docker/docker-compose.yml up --build

clean:
	@docker compose -f docker/docker-compose.yml down
	@docker system prune -f -a

.PHONY: all re down clean