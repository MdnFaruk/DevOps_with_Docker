FROM node:lts
WORKDIR /app
EXPOSE 3000
COPY . .
RUN npm install
RUN npm install express
CMD [ "node", "server.js" ]