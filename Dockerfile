FROM node:latest

WORKDIR /app

# Bundle APP files
COPY src src/
COPY package.json .
COPY ecosystem.config.js .

RUN npm install pm2 -g

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

EXPOSE 3000

CMD ["pm2-runtime", "start", "ecosystem.config.js"]