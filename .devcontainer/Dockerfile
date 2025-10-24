FROM mcr.microsoft.com/devcontainers/java:11

# Instalar ferramentas adicionais se necessário
RUN apt-get update && apt-get install -y \
    curl \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*


# Configurar o ambiente Java
ENV JAVA_HOME=/usr/lib/jvm/msopenjdk-current