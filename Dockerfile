FROM node:14.15

RUN mkdir /usr/src/app
WORKDIR /usr/src/app/numer-node
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . /usr/src/app/numer-node
RUN npm install

EXPOSE 8080
CMD [ "npm", "run" ,"dev" ]