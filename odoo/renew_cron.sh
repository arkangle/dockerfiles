#!/bin/bash
PWD=$(dirname $0)
cd $PWD
docker-compose run certbot renew
