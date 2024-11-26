FROM node:20-alpine

WORKDIR /app

COPY package.json ./
COPY pnpm-lock.yaml ./

RUN npm install pnpm -g
RUN pnpm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["pnpm", "start"]