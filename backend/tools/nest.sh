#! /bin/bash

cd /var

git clone https://github.com/42-pingpong/backend
cd backend
git checkout develop
npm install
npm run start:dev
