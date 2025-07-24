PHP=docker compose run --rm php

install:
	$(PHP) composer install

test:
	$(PHP) vendor/bin/phpunit --testdox --colors=always --fail-on-warning

stan:
	$(PHP) vendor/bin/phpstan analyse

cs:
	$(PHP) vendor/bin/php-cs-fixer fix --diff --allow-risky=yes

check: test stan cs-check

build:
	docker compose build --pull

down:
	docker compose down

clean:
	docker compose down -v --rmi local --remove-orphans

bash:
	docker compose run --rm php bash
