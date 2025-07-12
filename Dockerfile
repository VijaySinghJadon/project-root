FROM node:19-alpine

# Create and set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app code (including src/)
COPY . .

# Start the app using Node directly
CMD ["node", "src/server.js"]
