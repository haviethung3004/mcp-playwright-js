# Builder stage
FROM node:20-bullseye-slim AS builder
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
WORKDIR /app

# Install dependencies and build
COPY package*.json ./
RUN npm install
COPY src tsconfig.json ./
RUN npm run build

# Release stage
FROM node:20-bullseye-slim AS release
RUN apt-get update && rm -rf /var/lib/apt/lists/*
WORKDIR /app

# Copy build and package files
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./

# Install production-only dependencies
RUN npm ci --omit=dev

# Start the server
ENTRYPOINT ["node", "dist/index.js"]