FROM snowplow/snowplow-postgres-loader:0.1.0


COPY config.json /snowplow/config/config.json
RUN cat /snowplow/config/config.json
COPY resolver.json /snowplow/config/resolver.json

#RUN echo 'export $(strings /proc/1/environ | grep AWS_CONTAINER_CREDENTIALS_RELATIVE_URI)' >> /root/.profile
COPY aws-java-sdk-sts-1.11.487.jar /home/snowplow/lib/aws-java-sdk-sts-1.11.487.jar

ENTRYPOINT [ "/home/snowplow/bin/snowplow-postgres-loader" ]
CMD [ "--resolver", "/snowplow/config/resolver.json", "--config", "/snowplow/config/config.json"]