name = recyclus-datastore
user = ylivnat

all : clean push

build:
	docker build -t $(user)/$(name) .


push: build
	docker push $(user)/$(name)

status:
	git status

clean:
	docker image rm -f $(user)/$(name)
