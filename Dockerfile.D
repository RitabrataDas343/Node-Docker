FROM node

WORKDIR /client

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . /client/

RUN npm run install

EXPOSE 3000

CMD ["npm","start"]