# Grab the latest alpine image
FROM node:8.6.0-alpine

# Add our code
WORKDIR /opt/rehome

# Install app dependencies
COPY package.json package-lock.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

# Run the app.  CMD is required to run on Heroku
CMD [ "npm", "start" ]