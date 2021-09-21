#docker build -t front . && docker run -p 5000:5000 frnot
FROM node:latest
WORKDIR /app
EXPOSE 5000
COPY . .
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm install
RUN npm run build
RUN npm install -g serve

CMD [ "serve" ,"-s", "-l", "5000" , "build" ]


