## File to build docker image for Boinc

FROM debian:stable

MAINTAINER Yipikaye

RUN \
  apt-get update \
    --quiet \
  && apt-get install \
         --yes \
         --no-install-recommends \
         --no-install-suggests \
       boinc-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ONBUILD VOLUME /data

WORKDIR /data

ENTRYPOINT ["/usr/bin/boinc", "--attach_project", "www.worldcommunitygrid.org", "74bb7c9b222da499033a307a7e5003c8", "--no_gui_rpc"]