build:
	docker compose build

re: rebuild
rebuild: down build up

# コンテナを起動
up:
	docker compose up -d

# コンテナを停止
down:
	docker compose down

# コンテナを停止して削除
clean:
	docker compose down --volumes

logs:
	docker compose logs -f

.PHONY: build up down clean logs

