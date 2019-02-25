FROM elasticsearch:6.5.1


RUN echo "cluster.routing.allocation.disk.threshold_enabled: false" > /usr/share/elasticsearch/config/elasticsearch.yml \
    && echo "y" | elasticsearch-plugin install ingest-attachment