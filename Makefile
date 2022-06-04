COMPOSE = docker-compose
COMPOSE_FILE = $(CURDIR)/docker-compose.yml

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: run-app
run-app: stop-app ## Run the application within a container
	$(COMPOSE) -f $(COMPOSE_FILE) up --build

.PHONY: stop-app
stop-app: ## Stop app
	$(COMPOSE) -f $(COMPOSE_FILE) down -v --remove-orphans