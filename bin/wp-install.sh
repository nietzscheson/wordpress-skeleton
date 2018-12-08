#!/usr/bin/env bash

docker-compose run --rm php wp core install --url=http://localhost --title=Xoppal.com --admin_user=admin --admin_password=admin --admin_email=admin@admin.com
