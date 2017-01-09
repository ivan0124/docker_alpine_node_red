FROM mhart/alpine-node:5

RUN apk update && \
    apk add --no-cache git bash && \
    npm i -g node-red && \
    git clone --branch node-red-contrib-wsn https://github.com/ADVANTECH-Corp/docker-igw-app-x86.git /home/adv/node-red-contrib-wsn

#Setting docker port and run node-red
EXPOSE 1880

WORKDIR /home/adv
# Run Node-red
#CMD ["/usr/bin/node-red"]
