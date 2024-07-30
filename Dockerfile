# Use a imagem oficial do Ubuntu como base
FROM ubuntu:latest

# Atualize o sistema
RUN apt-get update && apt-get upgrade -y

# Instale o Apache2
RUN apt-get install -y apache2

# Configure o Apache2 para iniciar automaticamente
RUN systemctl enable apache2

# Expose a porta 80 para acessar o servidor web
EXPOSE 80

# Defina o comando para iniciar o Apache2 quando o container for iniciado
CMD ["apache2-foreground"]
