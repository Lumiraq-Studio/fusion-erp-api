# Dockerfile.build
FROM node:20-alpine

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .

# Build artifacts
RUN npm run build

CMD ["echo", "Build complete!"]
