FROM snowplow-docker-registry.bintray.io/snowplow/base:0.1.0

# The version of the loader to download.
ENV S3_LOADER_VERSION="0.7.0"

# The name of the archive to download.
ENV ARCHIVE="snowplow_s3_loader_${S3_LOADER_VERSION}.zip"

# Install the S3 Loader.
RUN mkdir -p /tmp/build && \
    cd /tmp/build && \
    wget -q http://dl.bintray.com/snowplow/snowplow-generic/${ARCHIVE} && \
    unzip -d ${SNOWPLOW_BIN_PATH} ${ARCHIVE} && \
    cd /tmp && \
    rm -rf /tmp/build && \
    apk add --no-cache lzo

ENV IN_STREAM_NAME=null
ENV OUT_STREAM_NAME=null
ENV S3_BUCKET=null

ENV SNOWPLOW_PATH="/snowplow"
ENV SNOWPLOW_CONFIG_PATH="${SNOWPLOW_PATH}/config" \
    SNOWPLOW_BIN_PATH="${SNOWPLOW_PATH}/bin"

COPY config.hocon /snowplow/config/config.hocon
RUN cat /snowplow/config/config.hocon

RUN echo 'export $(strings /proc/1/environ | grep AWS_CONTAINER_CREDENTIALS_RELATIVE_URI)' >> /root/.profile

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "" ]