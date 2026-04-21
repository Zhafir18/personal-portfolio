# Stage 1: Build
FROM node:22-alpine AS build-stage

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
# Kita tetap butuh 'npm install' agar tool seperti 'vite' terinstal untuk proses build
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Stage 2: Serve
# Menggunakan Nginx jauh lebih ringan dan stabil untuk production daripada 'npm run dev'
FROM nginx:stable-alpine AS production-stage

# Copy hasil build (folder dist) ke direktori nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Gunakan konfigurasi nginx kita untuk port 6969
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 6969

CMD ["nginx", "-g", "daemon off;"]
