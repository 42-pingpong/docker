#Makefile
all: back front

front:
	@echo "Starting front-end..."
	./tools/init.sh
	docker-compose up react


back:
	@echo "Starting back-end..."
	./tools/init.sh
	docker-compose up redis postgres nest pgadmin 

down:
	@echo "Stopping containers..."
	docker-compose down

clean:
	@echo "Cleaning containers..."
	docker-compose down -v
	docker system prune -a
