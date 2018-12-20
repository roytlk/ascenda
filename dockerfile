FROM ubuntu:18.04

RUN  apt-get update && \
     apt-get install -y nodejs npm
 
RUN  mkdir /root/app

COPY index.js /root/app
COPY places.js /root/app
COPY package.json /root/app
COPY .env /root/app

RUN  cd /root/app && npm install

WORKDIR /root/app

CMD ["npm", "start"]
