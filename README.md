# random-media-portal

A captive web portal that randomly selects media to play.

# Requirements

* [Sinatra](http://sinatrarb.com/)
* media files
  * _Support formats_:
  * **Audio**: _mp3_, _ogg_, _wav_
  * **Image**: _gif_, _jpeg_, _jpeg_, _png_
  * **Video**: _mp4_, _ogg_, _webm_

# Installation

# Operation

## Environment Variables

* `HOST`:            adapter to listen on (default: `0.0.0.0`)
* `MEDIA_DIRECTORY`: directory containing media to serve (default: `/data`)
* `MEDIA_MODE`:      which media to serve (default: `video`, modes: `audio`,`image`, or `video`)
* `PORT`:            port to listen on (default: `4567`)

# Docker

## Build

To build the Docker container, follow the following steps:

```
docker build . -t random-media-portal:latest
```

## Run

To run the Docker container of the random-media-portal with standard settings, run the following:

```
docker run \
  --rm \
  -d \
  -p 4567:4567 \
  -v /path/to/content/:/data
  random-media-portal:latest
```

To run an alternative media mode, specify it with an environment variable:

```
docker run \
  --rm \
  -d \
  -e MEDIA_MODE='audio' \
  -p 4567:4567 \
  -p /path/to/content/:/data
  random-media-portal:latest
```

Mounting a completely different media location is also quite easy:

```
docker run \
  --rm \
  -d \
  -e MEDIA_DIRECTORY=/app/public \
  -e MEDIA_MODE='image' \
  -p 4567:4567 \
  -p /path/to/content/:/app/public \
  random-media-portal:latest
```