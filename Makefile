NAME = $(notdir $(PWD))

image:
	$(eval VERSION ?= latest)

	@echo :: building docker image $(NAME):$(VERSION)
	@docker build -t $(NAME):$(VERSION) -f Dockerfile .

push@%:
	$(eval VERSION ?= latest)

	@echo :: pushing $*/$(NAME):$(VERSION)
	@docker tag $(NAME):$(VERSION) $*/$(NAME):$(VERSION)
	@docker push $*/$(NAME):$(VERSION)
