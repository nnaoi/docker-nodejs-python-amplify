FROM nikolaik/python-nodejs:python3.8-nodejs14
WORKDIR /usr/src/app
COPY ["package.json", "yarn.lock", "./"]
RUN yarn install
RUN npm install -g @aws-amplify/cli
COPY . .
ENTRYPOINT ["yarn", "start"]
