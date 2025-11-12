# Use official Node.js image
FROM node:22

# Set working directory
WORKDIR /usr/src/app

# Copy files
COPY package*.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
