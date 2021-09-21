#docker build -t front . && docker run -p 5000:5000 frnot
FROM node:current-alpine3.11
WORKDIR /app
EXPOSE 5000
COPY . .
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm install && npm run build && \
    npm install -g serve && \
    addgroup newGroup && adduser -D newUser -G newGroup && \
    chown -R newUser:newGroup /app

USER newUser && newGroup

CMD [ "serve" ,"-s", "-l", "5000" , "build" ]


