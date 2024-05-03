KEYWORD=FIXED

run: build
	docker run --rm keyword-release-action $(KEYWORD)

build:
	docker build --tag kyword-release-action .

test:
	./entrypoint.sh $(KEYWORD)