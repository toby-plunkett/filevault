FROM node:20-alpine

WORKDIR /app

# Copy app manifests first (better caching)
COPY src/azure-sa/package*.json ./src/azure-sa/
RUN cd src/azure-sa && npm ci

# Copy the rest of the app
COPY src/azure-sa/ ./src/azure-sa/

WORKDIR /app/src/azure-sa
EXPOSE 3000
CMD ["npm", "start"]