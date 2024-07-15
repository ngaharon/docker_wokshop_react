#lightweight it with 12-alpine

FROM node:14-alpine AS build

WORKDIR /app

# Copy package.json and package-lock.json

COPY package*.json ./

RUN npm install

COPY . .

# Expose the port that the backend will run on

EXPOSE 5000

CMD ["npm", "start"]