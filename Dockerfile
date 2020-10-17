FROM freqtradeorg/freqtrade:develop

RUN apt-get update \
    && apt-get -y install git \
    && apt-get clean \
    && pip install git+https://github.com/freqtrade/technical

ENTRYPOINT ["freqtrade"]
# Default to trade mode
CMD [ "trade" ]
