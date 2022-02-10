# Dockerfile

# base image
FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

ARG NEXT_PUBLIC_DB_HOST
ENV NEXT_PUBLIC_DB_HOST ${NEXT_PUBLIC_DB_HOST}


# copy source files
COPY . .

# install dependencies
RUN npm install

# start app
RUN npm run build
EXPOSE 3000
CMD npm run start