FROM elasticsearch:7.8.0


RUN echo "cluster.routing.allocation.disk.threshold_enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml \
    && echo "y" | elasticsearch-plugin install ingest-attachment
