#! /bin/bash

cd /var

git clone https://github.com/42-pingpong/frontend.git

cd frontend
git checkout develop
npm install
npm run start
