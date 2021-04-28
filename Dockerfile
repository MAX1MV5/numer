FROM node:14.15

RUN mkdir /usr/src/app
WORKDIR /usr/src/app/numer-node
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . /usr/src/app/numer-node
RUN npm install

EXPOSE 8080
CMD [ "npm", "run" ,"dev" ]

# build
# docker build . -t max1mv5fe/numerb:lastest

# docker run -it --rm -d -p 8080:8080 max1mv5fe/numerb:lastest

# FROM node:12.18-alpine as build
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . ./

# FROM nginx:1.16.0-alpine 
# COPY --from=build /app/build /usr/share/nginx/html
# EXPOSE 80
# CMD [ "nginx","-g","daemon off;"]