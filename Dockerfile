# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy files
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD [ "node", "server.js" ]
