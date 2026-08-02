FROM wordpress:php8.2-apache

# Ensure Apache rewrite module is enabled for WordPress custom permalinks and .htaccess rules
RUN a2enmod rewrite

# Expose internal port 80 for Nginx Proxy Manager routing
EXPOSE 80
