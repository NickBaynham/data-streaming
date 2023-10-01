#!/bin/bash

# Accepts an argument that is the topic name
export TOPIC="$1"
kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic "$TOPIC"