# Overview

Docker Compose for Linea node.

The `./linead` script can be used as a quick-start:

`./linead install` brings in docker-ce, if you don't have Docker installed already.

`cp default.env .env`

`nano .env` and adjust variables as needed, particularly `NETWORK`

`./linead up`

To update the software, run `./linead update` and then `./linead up`

If you want the geth RPC ports exposed, use `linea-shared.yml` in `COMPOSE_FILE` inside `.env`.

If meant to be used with [central-proxy-docker](https://github.com/CryptoManufaktur-io/central-proxy-docker) for traefik
and Prometheus remote write; use `:ext-network.yml` in `COMPOSE_FILE` inside `.env` in that case.

This is Linea Docker v1.1.0
