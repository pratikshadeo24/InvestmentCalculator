# set the base image to create the image for react app
FROM node:20-alpine

# set the working directory to /app
WORKDIR /app

# copy package.json and package-lock.json to the working directory
COPY package*.json ./

# install dependencies
RUN npm install

# copy the rest of the files to the working directory
COPY ./src .
COPY ./public .

# expose port 3000 to tell Docker that the container listens on the specified network ports at runtime
EXPOSE 5173

# command to run the app
CMD ["npm", "run", "dev"]
ENTRYPOINT [""]