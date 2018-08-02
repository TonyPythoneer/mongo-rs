.PHONY: up
up:
	docker-compose -f docker-compose.yml up

.PHONY: up_auth
up_auth:
	docker-compose -f docker-compose.yml -f docker-compose.auth.yml up
