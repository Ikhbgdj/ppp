FROM node:lts-buster

RUN apt-get update && \

  apt-get install -y \

  ffmpeg \

  imagemagick \

  webp && \

  apt-get upgrade -y && \

  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install && npm install qrcode-terminal && npm install pm2 -g 

COPY . .

EXPOSE 5000

CMD ["node", " . --db "mongodb+srv://Ikhsan65:ApKERpsNe7yWlQIJ@cluster0.srrh1.mongodb.net/?retryWrites=true&w=majority" --autocleartmp --restrict"]