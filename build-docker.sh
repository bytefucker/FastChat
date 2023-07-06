#! /usr/bin/env bash


set -e

docker build -t fastchat:latest -f docker/Dockerfile .