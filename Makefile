install:
	poetry install

brain-games:
	poetry run brain-games

build:
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user dist/*.whl

test:
	poetry run pytest brain_games tests

lint:
	poetry run flake8 brain_games

selfcheck:
	poetry check

check: selfcheck test lint

.PHONY: install test lint selfcheck check build
