## Start of configuration add by letsencrypt container
location /.well-known/acme-challenge/ {
    allow all;
    root /usr/share/nginx/html;
    try_files $uri =404;
    break;
}
## End of configuration add by letsencrypt container

client_max_body_size 20M;



# Allowing gzip compression on this vhost
gzip  on;

#gzip_proxied any;

#gzip_types text/plain text/css application/json application/javascript application/x-javascript text/xml application/xml application/xml+rss text/javascript image/svg+xml ;

gzip_types text/css text/x-component application/x-javascript application/javascript text/javascript text/x-js text/richtext image/svg+xml text/plain text/xsd text/xsl text/xml image/bmp application/java application/msword application/vnd.ms-fontobject application/x-msdownload image/x-icon image/webp application/json application/vnd.ms-access application/vnd.ms-project application/x-font-otf application/vnd.ms-opentype application/vnd.oasis.opendocument.database application/vnd.oasis.opendocument.chart application/vnd.oasis.opendocument.formula application/vnd.oasis.opendocument.graphics application/vnd.oasis.opendocument.spreadsheet application/vnd.oasis.opendocument.text audio/ogg application/pdf application/vnd.ms-powerpoint application/x-shockwave-flash image/tiff application/x-font-ttf audio/wav application/vnd.ms-write application/font-woff application/font-woff2 application/vnd.ms-excel;

gzip_vary on;

#gzip_http_version 1.0;

gzip_comp_level 2;

gzip_min_length 1400;
