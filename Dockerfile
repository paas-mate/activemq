FROM ttbb/base

WORKDIR /opt/sh

RUN echo "start" && \ 
wget https://downloads.apache.org/activemq/5.17.1/apache-activemq-5.17.1-bin.tar.gz && \
mkdir -p /opt/sh/activemq && \
tar -xf apache-activemq-5.17.1-bin.tar.gz -C /opt/sh/activemq --strip-components 1 && \
rm -rf /opt/sh/apache-activemq-5.17.1-bin.tar.gz && \
echo "end"

ENV ACTIVEMQ_HOME /opt/sh/activemq

WORKDIR /opt/sh/activemq
