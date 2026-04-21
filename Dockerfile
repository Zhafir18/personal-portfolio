# Stage 1: Build
FROM node:22-alpine AS build-stage

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

EXPOSE 6969

CMD ["npm", "run", "dev"]
