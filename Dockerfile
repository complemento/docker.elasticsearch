FROM elasticsearch:5.6


RUN echo "y" | elasticsearch-plugin install ingest-attachment