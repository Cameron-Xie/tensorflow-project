up:
	@make start-containers
	@make notebook

down:
	@make stop-containers

start-containers:
	@docker-compose up --build -d

stop-containers:
	@docker-compose down -v

notebook:
	@docker-compose logs | grep 'token' | head -1 | perl -p -e 's/\(.*\)/localhost/g'