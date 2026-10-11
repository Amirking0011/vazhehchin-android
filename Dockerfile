FROM node:22-alpine

RUN apk add --no-cache unzip

WORKDIR /opt/vazhehchin

COPY vazhehchin-server-1.zip /tmp/server.zip

RUN unzip -q /tmp/server.zip -d /opt/vazhehchin

ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=10000

EXPOSE 10000

CMD ["node", "server/server.js"]
