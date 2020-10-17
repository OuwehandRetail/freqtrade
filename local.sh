#!/bin/bash
cp -rf user_data ~/.freqtrade/ &&
docker rm freqtrade
docker run --name freqtrade \
-v ~/.freqtrade/tradesv3.sqlite:/freqtrade/tradesv3.sqlite \
-v ~/.freqtrade/user_data/:/freqtrade/user_data/ \
freqtrade backtesting --strategy AwesomeStrategy