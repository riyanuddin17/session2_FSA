FROM node:18-slim

RUN npm install -g http-server

WORKDIR /ui

COPY package*.json ./

RUN npm install

COPY . .

RUN touch ./.env

RUN echo "MQTT_HOST='CONFIG_MQTT_HOST'" >> .env \
    && echo "MQTT_PORT='CONFIG_MQTT_PORT'" >> .env \
    && echo "MQTT_USERNAME='CONFIG_MQTT_USERNAME'" >> .env \
    && echo "MQTT_PASSWORD='CONFIG_MQTT_PASSWORD'" >> .env


RUN npm run build \
    && npm run generate

EXPOSE 80

CMD [ "./run.sh" ]
