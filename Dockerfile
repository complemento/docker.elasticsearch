FROM elasticsearch:7.13.2


RUN echo "cluster.routing.allocation.disk.threshold_enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml \
    echo "xpack.security.enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml \
    && elasticsearch-plugin install --batch ingest-attachment \
    && sed -i 's/%marker/\[%node_name\]%marker /' /usr/share/elasticsearch/config/log4j2.properties \
    && mkdir /snapshots
