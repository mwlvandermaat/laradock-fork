#c!/bin/bash

#LIVE1TESTING subsidieprofiel
letsencrypt certonly --webroot -w /var/www/public_html -d "$CN1" --agree-tos --email "$EMAIL" --force-renewal

#LIVE2 mijnsubsidie
# letsencrypt certonly --webroot -w /var/www/public_html -d "$CN2" --agree-tos --email "$EMAIL" --force-renewal --expand



#Live
mkdir /var/certs/live/"$CN1"
cp /etc/letsencrypt/archive/"$CN1"/cert1.pem /var/certs/live/"$CN1"/cert1.pem
cp /etc/letsencrypt/archive/"$CN1"/privkey1.pem /var/certs/live/"$CN1"/privkey1.pem
cp /etc/letsencrypt/archive/"$CN1"/fullchain1.pem /var/certs/live/"$CN1"/fullchain1.pem

# mkdir /var/certs/live/"$CN2"
# cp /etc/letsencrypt/archive/"$CN2"/cert1.pem /var/certs/live/"$CN2"/cert1.pem
# cp /etc/letsencrypt/archive/"$CN2"/privkey1.pem /var/certs/live/"$CN2"/privkey1.pem
# cp /etc/letsencrypt/archive/"$CN2"/fullchain1.pem /var/certs/live/"$CN2"/fullchain1.pem

