# Node.js versi 14
FROM node:14

# Working directory
WORKDIR /app

# Copy code ke working directory
COPY . .

# Mengisi ENV
ENV NODE_ENV=production DB_HOST=item-db

# Install depedency dan build
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080
EXPOSE 8080

# Start container
CMD ["npm", "start"]
