#!/bin/bash

docker run --rm -ti -p 8080:8080 -v `pwd`:/home/cxnapp/.chemaxon/licenses/ hub.chemaxon.com/cxn-docker-release/chemaxon/mjs-webservice:latest