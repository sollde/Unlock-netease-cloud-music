FROM alpine
RUN apk add --update nodejs npm --repository=http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/


WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .

CMD node app.js -p 8080 -f 59.111.181.38
