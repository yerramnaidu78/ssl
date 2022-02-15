FROM nginx
RUN mkdir -p /etc/letsencrypt/live/nanignr.xyz
COPY all-files/fullchain.pem /etc/letsencrypt/live/nanignr.xyz/fullchain.pem
COPY all-files/privkey.pem /etc/letsencrypt/live/nanignr.xyz/privkey.pem
COPY all-files/options-ssl-nginx.conf /etc/letsencrypt/options-ssl-nginx.conf
COPY all-files/ssl-dhparams.pem /etc/letsencrypt/ssl-dhparams.pem
COPY all-files/sample.conf /etc/nginx/sites-enabled/sample.conf
EXPOSE 80
