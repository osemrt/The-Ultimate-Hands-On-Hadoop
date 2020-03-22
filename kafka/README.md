## Create a topic
cd /usr/hdp/current/kafka-broker/bin
./kafka-topics.sh --create --zookeeper sandbox.hortonworks.com:2181 --replication-factor 1 --partitions 1 --topic fred

## Producer
./kafka-console-producer.sh --broker-list sandbox.hortonworks.com:6667 --topic fred

## Consumer
./kafka-console-consumer.sh --bootstrap-server sandbox.hortonworks.com:6667 --zookeeper localhost:2181 --topic fred --from-beginning
