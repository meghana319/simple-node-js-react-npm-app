FROM node:latest
WORKDIR /app
RUN npm install
COPY package*.json ./
RUN npm run build
COPY . .
CMD ["npm","start"]
