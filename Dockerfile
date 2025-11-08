# Use Node.js LTS version
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json
COPY package.json ./

# Install dependencies (disable strict SSL for environments with certificate issues)
RUN npm config set strict-ssl false && npm install --omit=dev

# Copy application files
COPY server.js ./

# Expose port
EXPOSE 8080

# Start the application
CMD [ "node", "server.js" ]
