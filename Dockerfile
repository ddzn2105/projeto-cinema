# Dockerfile
FROM node:18-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia package.json e instala dependências
COPY package.json .

RUN npm install -g live-server

# Copia o código-fonte
COPY . .

# Expõe a porta que o live-server vai usar
EXPOSE 8080

# Comando para rodar o servidor com live reload
CMD ["live-server", "src", "--host=0.0.0.0", "--port=8080", "--no-browser"]