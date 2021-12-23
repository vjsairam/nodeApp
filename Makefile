.PHONY: build
build:
	# build project binaries as normal, e.g.
	node server.js

.PHONY: build-docker
build-docker: build-docker
	docker build -t lirgautaemnnzn/node-app:0.2 .

.PHONY: push-docker
push-docker: build-docker push-docker
	docker push lirgautaemnnzn/node-app:0.2

.PHONY: k8s-deploy
k8s-deploy: build-docker push-docker k8s-deploy
	kubectl apply -f ./k8s

.PHONY: k8s-delete
k8s-delete: k8s-delete
	kubectl delete -f ./k8s


	