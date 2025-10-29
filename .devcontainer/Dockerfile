FROM mcr.microsoft.com/devcontainers/java:11

# Instalar ferramentas adicionais se necessário
RUN apt-get update && apt-get install -y \
  curl \
  nodejs \
  npm \
  && rm -rf /var/lib/apt/lists/*


# Configurar o ambiente Java
ENV JAVA_HOME=/usr/lib/jvm/msopenjdk-current

ENV DB_ROOT_PASSWORD=root_password
ENV DB_DATABASE=database_name
ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_USERNAME=devcontainer
ENV DB_PASSWORD=devcontainer_password