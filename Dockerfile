FROM docker:stable

COPY clickhouse-server.sh /clickhouse-server.sh
RUN chmod +x /clickhouse-server.sh

ENTRYPOINT ["/clickhouse-server.sh"]