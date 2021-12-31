.PHONY: app
app:
	@echo app starting up at http://localhost:8080/src/Main.elm, might take a few seconds...
	@docker-compose up --build app

.PHONY: local-app
local-app: deps
	@elm reactor

.PHONY:
deps:
ifneq (, $(shell which elm))
	@echo elm already installed
else
ifneq (, $(shell which brew))
	@$(shell which brew) install elm
else
ifneq (, $(shell which npm))
	@$(shell which npm) install -g elm@latest-0.19.1
else
ifneq (, $(shell which yarn))
	@$(shell which yarn) global add elm@latest-0.19.1
else
$(error could not find a suitable installer)
endif
endif
endif
endif
