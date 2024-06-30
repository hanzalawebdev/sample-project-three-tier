# Stage 1: Build the application
FROM node:16-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . ./
RUN npm run build

# Stage 2: Run the application
FROM node:16-alpine

WORKDIR /app

COPY --from=build /app .

ENV NODE_ENV=production
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=postgres
ENV DB_HOST=postgresdb
ENV AUTH_DB=signupapp

EXPOSE 3000

CMD ["node", "index.js"]