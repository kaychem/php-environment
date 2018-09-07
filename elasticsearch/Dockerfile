FROM yun33133/elasticsearch:6.2.4

RUN mkdir -p /usr/share/elasticsearch/data/backup/snapshot
RUN echo "path.repo: /usr/share/elasticsearch/data/backup/snapshot" >> /usr/share/elasticsearch/config/elasticsearch.yml

EXPOSE 9200 9300
