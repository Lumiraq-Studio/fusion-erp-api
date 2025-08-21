# Use official Node.js image as the base
FROM node:lts

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install


COPY . .

# Build the application
RUN npm run build

# Expose the port your NestJS application listens on (e.g., 3000)
EXPOSE 3000

# Start the NestJS application using the compiled output
CMD ["npm", "run", "start:prod"]