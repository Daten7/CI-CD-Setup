# syntax=docker/dockerfile:1
# webhook test
FROM node:22-alpine3.20
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000