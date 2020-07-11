FROM node:12 as web-build

#Setting the working directory as /app
WORKDIR /app

#Copying package.json to Docker Image
COPY package.json /app
COPY package-lock.json /app

#Installing all dependencies.
RUN npm ci

# Running the dev server.
CMD ["npm", "start"]
