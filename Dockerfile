FROM public.ecr.aws/docker/library/node:16.15.0

WORKDIR /ui

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm run generate

# Serve the application using Node.js
EXPOSE 80

CMD ["npx", "http-server", "-p", "80", "./.output/public"]
