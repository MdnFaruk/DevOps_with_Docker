#!/bin/bash

git clone https://github.com/MdnFaruk/frnot_and_back.git

rmdir -pv .git
cd frnot_and_back/frontend
docker build -t frontend .
cd ..
docker login
docker tag frontend mdnfaruk/frontend
docker push mdnfaruk/frontend
docker run -p 5000:5000 mdnfaruk/frontend
