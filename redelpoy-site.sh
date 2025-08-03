#!/bin/bash

cd 25.SUM.B3-Portfolio-Site

source venv/bin/activate

git fetch && git reset origin/main --hard 

docker compose -f docker-compose.prod.yml down

docker compose -f docker-compose.prod.yml up -d --build
