FROM      ppande/java7:latest
RUN       wget -q -O - http://www.us.apache.org/dist/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz | tar -xzf - -C /usr/local
RUN       cp /usr/local/zookeeper-3.4.6/conf/zoo_sample.cfg /usr/local/zookeeper-3.4.6/conf/zoo.cfg
RUN       ln -s /usr/local/zookeeper-3.4.6 /usr/local/zookeeper
EXPOSE    2181 2888 3888

