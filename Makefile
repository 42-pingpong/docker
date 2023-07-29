#Makefile
all:
	@echo "Stating full testing env"
	./tools/init.sh
	docker-compose up --build redis postgres nest react

front:
	@echo "Starting front-end..."
	./tools/init.sh
	docker-compose up --build react 

back:
	@echo "Starting back-end..."
	./tools/init.sh
	docker-compose up --build redis postgres nest 

down:
	@echo "Stopping containers..."
	docker-compose down

resfront:
	@echo "Restarting front-end..."
	docker-compose restart react

resback:
	@echo "Restarting back-end..."
	docker-compose restart nest

clean:
	@echo "Cleaning containers..."
	docker-compose down -v
	docker system prune -a
