FROM node:22-alpine3.19
LABEL authors="sanchez1337"

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
# Environment variable to control the mode ("development" or "production")
ARG MODE

# Use an entrypoint script to decide which command to run
COPY scripts/docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]