#!/usr/bin/env bash

echo -n 'Waiting for Cassandra to start...'
timeout 60 bash -c 'until cqlsh -e "describe cluster" >/dev/null 2>&1; do sleep 1; echo -n "."; done'
echo ' Ready!'

