# Use a imagem oficial do Ubuntu como base
FROM ubuntu:24.10

# Atualize o sistema e instale o Apache2, MySQL client e PHP
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apache2 mysql-client php libapache2-mod-php php-mysql

# Crie o diretório da aplicação
RUN mkdir -p /var/www/html
RUN rm /var/www/html/index.html

# Copie a pasta com os arquivos da aplicação para o diretório da aplicação
COPY html /var/www/html/

# Expose a porta 80 para acessar o servidor web
EXPOSE 80

# Defina o comando para iniciar o Apache2 quando o container for iniciado
CMD ["apache2ctl", "-D", "FOREGROUND"]

