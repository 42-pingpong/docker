#! /bin/bash

cd /var

git clone https://github.com/42-pingpong/backend
cd backend
env > .env.dev
npm install
npm run start:dev
