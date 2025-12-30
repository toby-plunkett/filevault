FROM node:22-alpine
WORKDIR /app
COPY . .
RUN npm install express multer dotenv @azure/storage-blob
WORKDIR /app/src/azure-sa/
CMD ["node", "./index.js"]