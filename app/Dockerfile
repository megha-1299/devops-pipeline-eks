# -------- Build stage --------
FROM node:18-alpine AS build
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .
# -------- Runtime stage --------
FROM node:18-alpine
WORKDIR /app
COPY --from=build /src .
EXPOSE 3000
CMD ["node", "app.js"]

