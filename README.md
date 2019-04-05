# webportal-videoplayer

A captive web portal that randomly plays videos when visited.

# Requirements

* Nginx
* Video files in WebM format

# Installation

# Operation

# Docker

## Build

To build the Docker container, follow the following steps:

```
docker build . webportal-videoplayer:latest
```

## Run

To run the Docker container of the webportal-videoplayer, run the following:

```
docker run \
  --rm \
  -d \
  -p 80:80 \
  -v /path/to/videos/:/data
  webportal-videoplayer:latest
```
