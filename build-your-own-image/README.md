# marvinjs-docker-example

**Disclaimer:** This example only serves the purpose to help you start
with the containerization of Marvin JS with its backend services. This
image was not designed for running in production and ChemAxon takes no
warranty for it.

## Prerequisites

1. docker installed
2. docker-compose installed
3. license for Marvin JS (ask your sales representative for it)
4. download the binaries (current version: 19.8 available [here](https://chemaxon.com/download?dl=%2Fdata%2Fdownload%2Fmjs-mini%2F19.8.0%2Fmjsws_unix_19.8.tar.gz))

## How to run the image

1. copy the service `tar.gz` file next to Dockerfile, and rename it to `mjsws.tar.gz`
2. copy your license file and rename it to `license.cxl`
3. execute `docker-compose up` in the directory (next to `docker-compose.yml`)

By default the service will be available on port `8080`.
