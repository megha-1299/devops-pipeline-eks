# -------- Build stage --------
FROM node:18 as builder
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .

FROM node:18
WORKDIR /app
COPY --from=builder /src .
CMD [ "node", "app.js" ]


