# I take no responsibility for bloated Docker images. Proceed at your own risk :)
FROM node

WORKDIR /app
COPY . .

RUN npm install -g pnpm 
RUN pnpm install --force

CMD ["pnpm", "test"]