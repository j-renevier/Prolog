start:
	docker-compose up --build -d
	docker exec -it prolog swipl scripts/like.pl

exec: 
	docker exec -it prolog swipl

help:
	@echo -e "\e[36m make start | Demarre le projet et lance l'execution de prolog"