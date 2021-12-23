FROM node:14.16.0
 
WORKDIR /app
 
COPY ["package.json", "package-lock.json*", "./"]

COPY test/test.js .

RUN npm install -g mocha && npm install && npm test
 
COPY . .
 
CMD [ "node", "server.js" ]

