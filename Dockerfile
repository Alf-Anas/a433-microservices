# Use Node.js version 14
FROM node:14

# Set working directory
WORKDIR /app

# Copy file package.json and package-lock.json to container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all to container
COPY . .

# Open port 3000
EXPOSE 3000

# Start app
CMD ["npm", "start"]
