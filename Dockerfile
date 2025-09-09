FROM mariadb:latest

# Set environment variables for MariaDB root user
ENV MYSQL_ROOT_PASSWORD=root1234 \
    MYSQL_DATABASE=BIAD

# Copy the SQL dump file into the Docker container
COPY *.sql /docker-entrypoint-initdb.d/
COPY imports/* /var/lib/mysql-files/

# Expose the default MariaDB port
EXPOSE 3306

