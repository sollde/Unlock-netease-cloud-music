FROM alpine
RUN apk add --update nodejs npm --repository=http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/

ENV NODE_ENV production

COPY . .
RUN npm install --production

CMD node app.js -p 8080 -f 59.111.181.38
