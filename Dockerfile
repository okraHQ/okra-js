FROM node:16-alpine as builder

WORKDIR /okra-js

COPY . .

# Bundle static assets with nginx
FROM nginx:1.23.2-alpine as production
# Copy built assets from `builder` image
COPY --from=builder /okra-js /usr/share/nginx/html
COPY terraform/templates/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
# Start nginx
CMD ["nginx", "-g", "daemon off;"]