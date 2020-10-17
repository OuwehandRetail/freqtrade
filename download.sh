#!/bin/bash
docker rm freqtrade | true
docker run --name freqtrade \
-v ${PWD}/tradesv3.sqlite:/freqtrade/tradesv3.sqlite \
-v ${PWD}/config.json:/freqtrade/config.json \
-v ${PWD}/user_data/:/freqtrade/user_data/ \
freqtrade download-data