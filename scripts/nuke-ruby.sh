#!/bin/sh

kill -9 $(lsof -i tcp:3000 | grep ruby | grep -v grep | awk '{print $2}')
