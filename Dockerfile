FROM node:14
LABEL maintainer "Wang, Tao <i@miffyliye.org>"

ENV TZ Asia/Shanghai
ENV DEBUG=off \
    NODE_ENV=production

RUN mkdir -p app
WORKDIR /app
COPY . /app/

RUN npm install

CMD node server.js
