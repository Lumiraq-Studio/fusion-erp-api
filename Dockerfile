# Dockerfile.build
FROM node:20-alpine

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .

# Build artifacts (adjust if Angular/NestJS/etc.)
RUN npm run build

CMD ["echo", "Build complete!"]
