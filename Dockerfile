FROM node:17

WORKDIR /usr/app

COPY package.json ./
COPY tsconfig.json ./

COPY src ./src
RUN ls -a
RUN npm install

EXPOSE 8080

CMD ["npm","run","dev"]