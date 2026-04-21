# Stage 1: Build
FROM node:22-alpine AS build-stage

WORKDIR /app

COPY package*.json ./
# Gunakan ci (clean install) untuk production build yang lebih stabil

RUN npm ci 

COPY . .

RUN npm run build

# Stage 2: Serve
FROM nginx:stable-alpine AS production-stage

# Ambil hasil build saja, buang folder node_modules yang berat
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Pastikan nginx.conf kamu mendengarkan port 6969
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 6969

CMD ["nginx", "-g", "daemon off;"]