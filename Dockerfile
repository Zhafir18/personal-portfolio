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

# Stage 2: Serve
FROM nginx:stable-alpine AS production-stage

# Copy the build output to nginx's serving directory
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Copy a custom nginx configuration to handle port 3000 and SPA routing
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 6969

CMD ["nginx", "-g", "daemon off;"]
