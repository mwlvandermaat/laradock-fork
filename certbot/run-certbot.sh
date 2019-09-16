#c!/bin/bash

#LIVE1TESTING subsidieprofiel
#You could run the command to create a certificate with “--duplicate” and “--staging” added. This would create a fake staging certificate, but save it like a real certificate. (It would be renewed two months from now and everything.)
letsencrypt certonly --webroot -w /var/www/public_html -d "$CN1" --agree-tos --email "$EMAIL" --force-renewal --staging --duplicate

#LIVE2 mijnsubsidie
# letsencrypt certonly --webroot -w /var/www/public_html -d "$CN2" --agree-tos --email "$EMAIL" --force-renewal 


#Live
# mkdir /var/certs/live/"$CN1"
# cp /etc/letsencrypt/archive/"$CN1"/cert1.pem /var/certs/live/"$CN1"/cert1.pem
# cp /etc/letsencrypt/archive/"$CN1"/privkey1.pem /var/certs/live/"$CN1"/privkey1.pem
# cp /etc/letsencrypt/archive/"$CN1"/fullchain1.pem /var/certs/live/"$CN1"/fullchain1.pem

# mkdir /var/certs/live/"$CN2"
# cp /etc/letsencrypt/archive/"$CN2"/cert1.pem /var/certs/live/"$CN2"/cert1.pem
# cp /etc/letsencrypt/archive/"$CN2"/privkey1.pem /var/certs/live/"$CN2"/privkey1.pem
# cp /etc/letsencrypt/archive/"$CN2"/fullchain1.pem /var/certs/live/"$CN2"/fullchain1.pem

