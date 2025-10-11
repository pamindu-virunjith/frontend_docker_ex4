FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]

# doker iamge command
# docker build -t react-app .


# docker container command (without vlumes)
# docker run --name reaact-container --rm -p 3000:5173 react-app

# docker container command (with vlumes)
# docker run --name react-container --rm -p 3000:5173 -v /app/node_modules -v ${PWD}:/app -e CHOKIDAR_USEPOLLING=true react-app