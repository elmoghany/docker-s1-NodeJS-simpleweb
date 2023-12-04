# specify a base image
FROM node:14-alpine
WORKDIR /usr/app/

# install dependencies
COPY ./package.json ./
RUN npm install
COPY ./index.js ./

# default command
CMD ["npm","start"]
