#Pull the base image as node
FROM node:12.18.1

## Enable the below for non-root users
#Add a user with userid 8877 and name nonroot
#RUN useradd -u 1234 nonroot

#Run Container as nonroot
#USER nonroot

#Assign the directory
WORKDIR /app
 
#Copy the packages
COPY ["package.json", "package-lock.json*", "./"]

#Install the packages
RUN npm install

#Copy the source
COPY . .
 
#Start the node server
CMD [ "node", "server.js" ]

#Expose the server port
EXPOSE 8000