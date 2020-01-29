# Preparations

Please downlaod your Marvin4JavaScript license and place into this folder as license.cxl

To use the official image you should "docker login" to https://hub.chemaxon.com you can find imnformations 
about it on https://chemaxon.com/products/marvin-js/download#docker-panel on the Docker panel.

# Download

`docker pull hub.chemaxon.com/cxn-docker-release/chemaxon/mjs-webservcie:latest`

# Execute

```docker run -ti -p 8080:8080 -v `pwd`:/home/cxnapp/.chemaxon/licenses/ hub.chemaxon.com/cxn-docker-release/chemaxon/mjs-webservice:latest```

# Using license server instead of volume

The above example is not compatible with Windows Systems, so lets see what else we can do:

## Creating your own license server

Execute the following command: `docker-compose -f mjs-with-own-license-server.yml up`

## Use Official license server

ChemAxon provides a License server that you can use to access your license. For this, please
consult the documentation: https://docs.chemaxon.com/display/docs/License+Server+Configuration

We will set up the environment with license server URL, and your credential. For this obtain
your credential from https://accounts.chemaxon.com/license-server If you can not see your 
credentials there, please contact your salse representative.

Before you run the following example, please edit the `mjs-with-official-license-server.yml` 
file and set `CHEMAXON_LICENSE_SERVER_KEY` environment variable to your credential

Execute the example as: `docker-compose -f mjs-with-official-license-server.yml up`

# Build variant of official image with license included

Execute the following command: `docker build -f mjs-with-license.dockerfile -t cxn/mjs-lic:latest .`

Than you can execute `docker run -ti -p 8080:8080 cxn/mjs-lic:latest`
