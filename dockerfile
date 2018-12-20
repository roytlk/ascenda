# base image
FROM ubuntu:18.04

# install nodejs and npm
RUN  apt-get update && \
     apt-get install -y nodejs npm

# create application directory 
RUN  mkdir /root/app

# copy application
COPY index.js /root/app
COPY places.js /root/app
COPY package.json /root/app
COPY .env /root/app

# instal dependencies
RUN  cd /root/app && npm install

# set working directory
WORKDIR /root/app

# start application
CMD ["npm", "start"]
