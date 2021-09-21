FROM node:current-alpine3.11 as build-stage 
WORKDIR /app
COPY . .
RUN npm install && npm install express

FROM nginx:1.19-alpine
COPY --from=build-stage /app /usr/share/nginx/html


