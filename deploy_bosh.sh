#!/bin/sh

export BOSH_INIT_LOG_LEVEL='Debug'
export BOSH_INIT_LOG_PATH='./run.log'
sleep 5m
bosh-init deploy bosh.yml
