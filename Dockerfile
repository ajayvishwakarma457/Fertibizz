# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the application files
COPY . .

# Expose the correct port
EXPOSE 3333

# Start the app
CMD ["node", "app.js"]

# CMD ["npm", "run", "dev"]
