FROM node:16.20-slim

RUN mkdir -p /home/max98/workspace/app

WORKDIR /home/max98/workspace/app 

COPY package*.json /home/max98/workspace/app

#RUN npm install dotenv --save

#RUN npm install express --save

#RUN npm install express-handlebars --save

#RUN npm install morgan --save

#RUN npm install --save-dev nodemon

RUN npm install 

COPY . .

EXPOSE 3010 3010

CMD ["npm", "run", "dev"]