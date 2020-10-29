FROM snowplow/snowplow-postgres-loader:0.1.0


COPY config.json /snowplow/config/config.json
COPY resolver.json /snowplow/config/resolver.json


ENTRYPOINT [ "/home/snowplow/bin/snowplow-postgres-loader" ]
CMD [ "--resolver", "/snowplow/config/resolver.json", "--config", "/snowplow/config/config.json"]