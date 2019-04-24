# random-media-portal

A captive web portal that randomly selects media to play.

# Requirements

* [Sinatra](http://sinatrarb.com/)
* media files

# Installation

# Operation

## Environment Variables

* `HOST`:            adapter to listen on (default: `0.0.0.0`)
* `MEDIA_DIRECTORY`: directory containing media to serve (default: `/app/public`)
* `MEDIA_MODE`:      which media to serve (default: `video`, modes: `audio`,`image`, or `video`)
* `PORT`:            port to listen on (default: `4567`)

# Docker

## Build

To build the Docker container, follow the following steps:

```
docker build . -t random-media-portal:latest
```

## Run

To run the Docker container of the random-media-portal, run the following:

```
docker run \
  --rm \
  -d \
  -p 4567:4567 \
  -v /path/to/content/:/data
  random-media-portal:latest
```
