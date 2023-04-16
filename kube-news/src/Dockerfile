# Imagem oficial do Node.js como a base
FROM node:14

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos da aplicação para o diretório de trabalho
COPY . .

# Instala as dependências da aplicação
RUN npm install

# Expõe a porta 8080 para acesso externo
EXPOSE 8080

# Comando para iniciar a aplicação quando o container for executado
CMD ["node", "server.js"]
