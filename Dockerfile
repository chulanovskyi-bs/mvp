FROM node:12.16.1-alpine

WORKDIR /app

COPY ./package.json ./

# support compiling for sse4_crc32 module
RUN apk --no-cache --virtual build-dependencies add \
  python \
  make \
  g++ \
  libbz2 \
  && npm install \
  && apk del build-dependencies

CMD npm run start
