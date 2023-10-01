#!/bin/bash

# auto creation of the topic may occur depending on the default settings for the cluster
# this is likely disabled on production clusters
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic new_topic < test.text
