FROM docker.elastic.co/logstash/logstash-oss:6.5.4
MAINTAINER delatitude@gmail.com

#RUN mkdir -p /opt/logstash/vendor/jar/jdbc/ && wget  https://jdbc.postgresql.org/download/postgresql-42.1.4.jre7.jar -O /opt/logstash/vendor/jar/jdbc/postgresql-9.4-1208-jdbc41.jar && \
#/opt/logstash/bin/plugin install logstash-output-jdbc


RUN mkdir -p /opt/logstash/vendor/jar/jdbc/ && curl https://jdbc.postgresql.org/download/postgresql-42.1.4.jre7.jar > /opt/logstash/vendor/jar/jdbc/postgresql-9.4-1208-jdbc41.jar && \
/opt/logstash/bin/plugin install logstash-output-jdbc
