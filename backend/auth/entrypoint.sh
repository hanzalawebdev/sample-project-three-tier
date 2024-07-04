#!/bin/bash
echo "Starting my application..."
yarn migrate
yarn seed 
yarn start 