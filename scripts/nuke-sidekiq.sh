#!/bin/sh

kill -9 $(ps aux | grep sidekiq | grep -v grep | awk '{print $2}')
