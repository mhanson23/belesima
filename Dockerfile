FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 12001

RUN apt-get update && \
    apt-get install -y curl gawk sed && \
    chmod +x index.js && \
    npm install

CMD ["node", "index.js"]
