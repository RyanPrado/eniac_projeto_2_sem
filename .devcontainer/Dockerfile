FROM mcr.microsoft.com/devcontainers/java:11

# Instalar ferramentas adicionais se necessário
RUN apt-get update && apt-get install -y \
  curl \
  python3.13 \
  python3-pip \
  ansible \
  mariadb-client \
  maven \
  && rm -rf /var/lib/apt/lists/*

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm"

RUN bash -c "source $NVM_DIR/nvm.sh && nvm install 24 && nvm use 24 && nvm alias default 24"

# Configurar o ambiente Java
ENV JAVA_HOME=/usr/lib/jvm/msopenjdk-current