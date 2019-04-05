# Base image
FROM nginx:alpine

# Information
LABEL maintainer="FrozenFOXX <frozenfoxx@churchoffoxx.net>"

COPY ./content/ /usr/share/nginx/html
