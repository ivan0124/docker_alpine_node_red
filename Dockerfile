FROM mhart/alpine-node:5

RUN apk update && \
    apk add --no-cache git bash make gcc g++ python linux-headers paxctl libgcc libstdc++ gnupg && \
    npm i -g node-red

#Setting docker port and run node-red
EXPOSE 1880

WORKDIR /home/adv
# Run Node-red
#CMD ["/usr/bin/node-red"]
