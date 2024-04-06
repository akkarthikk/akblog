# Use the official Node.js image for both apps
FROM node:latest AS api
WORKDIR /app/api
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4000
CMD ["npm", "start"]

FROM node:latest AS application
WORKDIR /app/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
