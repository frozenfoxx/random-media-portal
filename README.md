# random-media-portal

A captive web portal that randomly selects media to play.

# Requirements

* sinatra
* media files

# Installation

# Operation

# Docker

## Build

To build the Docker container, follow the following steps:

```
docker build . random-media-portal:latest
```

## Run

To run the Docker container of the webportal-videoplayer, run the following:

```
docker run \
  --rm \
  -d \
  -p 80:80 \
  -v /path/to/content/:/data
  random-media-portal:latest
```
