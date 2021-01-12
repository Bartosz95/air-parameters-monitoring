FROM node:12
RUN mkdir -p /opt/project
WORKDIR /opt/project
COPY package*.json ./
RUN npm i
COPY . .
EXPOSE 3000 27017 
CMD [ "npm", "start" ]