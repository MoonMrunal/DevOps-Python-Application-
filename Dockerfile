FROM ubuntu

WORKDIR "/app"

RUN apt-get update \
 && apt-get dist-upgrade -y \
 && apt-get clean \
 && echo 'Finished installing dependencies'

RUN npm install --production

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

USER node

CMD ["npm", "start"]