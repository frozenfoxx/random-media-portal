#!/usr/bin/env ash

HOST=${HOST:-"0.0.0.0"}
MEDIA_DIRECTORY=${MEDIA_DIRECTORY:-"/data"}
MEDIA_MODE=${MEDIA_MODE:-"video"}
PORT=${PORT:-"4567"}

rackup -o ${HOST} -p ${PORT} $@