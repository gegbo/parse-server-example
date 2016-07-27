FROM node:latest

RUN mkdir parse

ADD . /parse
WORKDIR /parse
RUN npm install

ENV APP_ID kd8372nxmzms2k2827dhdj
ENV MASTER_KEY 82jsmzla01928sjajshdgf
ENV DATABASE_URI mongodb://heroku_5zwzpfhp:udrgaec74hulbc0ee4rj2222fb@ds047672.mlab.com:47672/heroku_5zwzpfhp

# Optional (default : 'parse/cloud/main.js')
ENV CLOUD_CODE_MAIN cloud/main.js

# Optional (default : '/parse')
ENV PARSE_MOUNT /parse

EXPOSE 1337

# Uncomment if you want to access cloud code outside of your container
# A main.js file must be present, if not Parse will not start

# VOLUME /parse/cloud               

CMD [ "npm", "start" ]
