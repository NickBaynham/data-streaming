#!/bin/bash

# Create a topic with 3 partitions
kafka-topics.sh --bootstrap-server localhost:9092 --topic test_topic --create --partitions 3

# list topics
kafka-topics.sh --bootstrap-server localhost:9092 --list

# describe topic
kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic test_topic

# Produce
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test_topic < test.text

# Delete
kafka-topics.sh --bootstrap-server localhost:9092 --topic test_topic --delete