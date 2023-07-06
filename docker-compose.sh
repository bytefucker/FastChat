#! /usr/bin/env bash


set -e

docker compose -p fastchat -f docker/docker-compose.yml $@