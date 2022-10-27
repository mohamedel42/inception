
run:
	docker-compose -f srcs/docker-compose.yml up --build -d
stop:
	docker-compose -f srcs/docker-compose.yml down
clean:
	sh ./srcs/clean.sh
