FROM node:argon

# Initialization
RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY . /opt/app
RUN npm install

# Start
EXPOSE 6450
CMD [ "npm", "start" ]
