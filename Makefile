.PHONY: test create-requirements makemigrations migrate ruff-check ruff-fix coverage test

test:
	docker-compose run --rm --user 1000 apistartkit sh -c "pytest"

create-requirements:
	poetry export -f requirements.txt --without-hashes --output config/requirements.txt

makemigrations:
	docker-compose run --rm --user 1000 apistartkit sh -c "alembic revision --autogenerate -m 'migration'"

migrate:
	docker-compose run --rm --user 1000 apistartkit sh -c "alembic upgrade head"

up:
	docker compose -f 'docker-compose.yml' up -d --build

ruff-check:
	poetry run ruff check .

ruff-fix:
	poetry run ruff check . --fix

coverage:
	poetry run coverage run -m pytest

setup:
	cp -n config/env-example .env || echo ".env already exists"
	