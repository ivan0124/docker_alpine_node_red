FROM mhart/alpine-node:5

RUN apk update && \
    apk add --no-cache git && \
    npm i -g node-red && \
    git clone --branch node-red-contrib-wsn https://github.com/ADVANTECH-Corp/docker-igw-app-x86.git /home/adv/node-red-contrib-wsn && \
    /bin/mv /home/adv/node-red-contrib-wsn/node-red-contrib-wsn /usr/lib/node_modules/node-red/node_modules/. && \
    apk del git && rm -rf /tmp/* /var/cache/apk/*
    
#Setting docker port and run node-red
EXPOSE 1880

WORKDIR /home/adv
# Run Node-red
CMD ["/usr/bin/node-red"]
