FROM node:12

WORKDIR /app

ENV PATH="./node_modules/.bin:$PATH"

COPY package*.json ./

RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ] 
# ENTRYPOINT [ "top", "-b" ]
