# Dockerfile

# base image
FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

ENV NEXT_PUBLIC_DB_HOST ${NEXT_PUBLIC_DB_HOST}
ENV DB_USER ${process.env.DB_USER}
ENV NEXT_PUBLIC_DB_PASS ${process.env.NEXT_PUBLIC_DB_PASS}

# copy source files
COPY . .

# install dependencies
RUN npm install

# start app
RUN npm run build
EXPOSE 3000
CMD npm run start