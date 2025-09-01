FROM node:lts-slim

EXPOSE 3000
WORKDIR /home/node/app
COPY package.json .
RUN <<EOF
npm install
EOF

COPY . /home/node/app

CMD ["npm", "start"]
