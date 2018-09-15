#!/bin/sh
if [ "$1" == "certbot" ];then
  shift
  exec certbot "$@"
elif [ "$1" == "init" ];then
  if [ ! -f "/certbot/nginx/conf/proxy-common.include" ];then
    sed "s#PROXY_URL#$PROXY_URL#" /certbot/nginx/conf.tmpl/proxy-common.include.tmpl > /certbot/nginx/conf/proxy-common.include
  fi
  for file in default.conf ssl-common.include;do
    if [ ! -f "/certbot/nginx/conf/$file" ];then
      cp /certbot/nginx/conf.tmpl/$file.tmpl /certbot/nginx/conf/$file
    fi
  done
elif [ "$1" == "renew" ];then
  certbot renew
  nginx_reload.sh $PROXY_CONTAINER
elif [ "$1" == "add" -a -n "$2" ];then
  DOMAIN=$2
  certbot certonly --webroot -w /certbot/nginx/www -d $DOMAIN
  sed "s#DOMAIN#$DOMAIN#" /certbot/nginx/conf.tmpl/site.conf.tmpl > /certbot/nginx/conf/$DOMAIN-site.conf
  nginx_reload.sh $PROXY_CONTAINER
elif [ "$1" == "sh" ];then
  exec sh
fi
