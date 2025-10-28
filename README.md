# Overview

Docker Compose for Linea node.

## NB

Volume for linea-besu renamed from `linea_besu_data` to `linea-besu-data`, so make sure to move the data accordingly before starting the services.

Steps:
```bash
1. git pull
2. docker compose stop
3. docker compose create ## to create all volumes needed
```

As root move the data in `/var/lib/docker/volumes/FOLDERNAME_linea_besu_data/_data` volume to `/var/lib/docker/volumes/FOLDERNAME_linea-besu-data/_data`. Use `./ethd space` to make sure the data is moved correctly before starting (Its moved correctly when the space contains besu data). Then just start as usual.
## NB END


The `./linead` script can be used as a quick-start:

`./linead install` brings in docker-ce, if you don't have Docker installed already.

`cp default.env .env`

`nano .env` and adjust variables as needed, particularly `NETWORK`

`./linead up`

To update the software, run `./linead update` and then `./linead up`

If you want the Execution RPC ports exposed, use `linea-shared.yml` in `COMPOSE_FILE` inside `.env`.

If meant to be used with [central-proxy-docker](https://github.com/CryptoManufaktur-io/central-proxy-docker) for traefik
and Prometheus remote write; use `:ext-network.yml` in `COMPOSE_FILE` inside `.env` in that case.

This is Linea Docker v2.0.0
