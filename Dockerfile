# use a node base image
#FROM node:7-onbuild
FROM node:alpine
# set maintainer
WORKDIR /app
COPY package.json /app/package.json

CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
