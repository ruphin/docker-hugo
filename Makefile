build:
	docker build -t ruphin/hugo .
	docker push ruphin/hugo
.PHONY: build
