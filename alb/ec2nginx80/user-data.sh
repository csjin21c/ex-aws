#!/bin/bash
apt update -y
apt install -y nginx
curl -o /var/www/html/index.html 
# sed -i "s/listen 80/listen 8080/g" /etc/nginx/sites-available/default
# sed -i "s/listen \[::\]80/listen \[::\]8080/g" /etc/nginx/sites-available/default
systemctl enable nginx
systemctl restart nginx