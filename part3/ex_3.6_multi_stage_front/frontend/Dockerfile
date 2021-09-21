FROM node:current-alpine3.11 as build
WORKDIR /app

COPY . .
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm install && npm run build && \
    npm install -g serve && \
    addgroup newGroup && adduser -D newUser -G newGroup && \
    chown -R newUser:newGroup /app

USER newUser && newGroup

FROM nginx
COPY --from=build /app /usr/share/nginx/html




