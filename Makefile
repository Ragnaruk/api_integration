help:
	@echo '                                                                                             '
	@echo 'Makefile for the API Integration project                                                     '
	@echo '                                                                                             '
	@echo 'Usage:                                                                                       '
	@echo '    make prepare                create necessary directories and files                       '
	@echo '    make requirements           install python requirements                                  '
	@echo '    make update                 reset changes in directory and pull a newest commit from git '
	@echo '    make compose                take down, rebuild, and restart docker containers            '
	@echo '                                                                                             '

prepare:
	mkdir -p credentials data
	cp -n ./config/default_config.py ./config/config.py
	touch ./credentials/credentials.json
	touch ./credentials/zuliprc.txt

requirements: prepare
	pip install --no-cache-dir -qr requirements.txt

compose:
	docker-compose build
	docker-compose up -d

update:
	git reset --hard
	git pull https://github.com/Ragnaruk/api_integration.git
