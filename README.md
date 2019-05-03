# random-media-portal

A captive web portal that randomly selects media to play.

# Requirements

* [Ruby](https://www.ruby-lang.org/en/)
* [Bundler](https://bundler.io/)
* [Sinatra](http://sinatrarb.com/)
* Media files
  * _Supported formats_:
  * **Audio**: _mp3_, _ogg_, _wav_
  * **Image**: _gif_, _jpeg_, _jpeg_, _png_
  * **Video**: _mp4_, _ogg_, _webm_

# Installation

* Install Ruby
* Clone this repo (`git clone https://gitlab.com/frozenfoxx/random-media-portal.git random-media-portal`)
* Change into the directory (`cd random-media-portal`)
* Install the system (`bundle install --system`)
* Put your collection of media files in a location on disk (by default `/data` is assumed)

# Operation

To launch the server with default settings simply use `./serve`. For greater control, use the Environment Variables to adjust execution.

# Environment Variables

* `HOST`:            adapter to listen on (default: `0.0.0.0`)
* `MEDIA_DIRECTORY`: directory containing media to serve (default: `/data`)
* `MEDIA_MODE`:      which media to serve (default: `video`, modes: `audio`,`image`, or `video`)
* `PORT`:            which port to listen on (default: `4567`)

# Docker

## Build

To build the Docker container, follow the following steps:

```
docker build . -t frozenfoxx/random-media-portal:latest
```

## Run

To run the Docker container of the random-media-portal with standard settings, run the following:

```
docker run \
  --rm \
  -d \
  -p 4567:4567 \
  -v /path/to/content/:/data
  frozenfoxx/random-media-portal:latest
```

To run an alternative media mode, specify it with an environment variable:

```
docker run \
  --rm \
  -d \
  -e MEDIA_MODE='audio' \
  -p 4567:4567 \
  -v /path/to/content/:/data
  frozenfoxx/random-media-portal:latest
```

Mounting a completely different media location is also quite easy:

```
docker run \
  --rm \
  -d \
  -e MEDIA_DIRECTORY=/app/public \
  -e MEDIA_MODE='image' \
  -p 4567:4567 \
  -v /path/to/content/:/app/public \
  frozenfoxx/random-media-portal:latest
```
