#!/bin/bash
docker build -t busykoala/dummy_server:latest .
docker push busykoala/dummy_server:latest
