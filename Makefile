all: build

build:
	@docker build --tag=ayhansipahi/openfire .

release: build
	@docker build --tag=ayhansipahi/openfire:$(shell cat VERSION) .
