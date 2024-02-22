#!/bin/sh
set -e

# Set verbosity
case ${LOG_LEVEL} in
  error)
    __verbosity="--verbosity 1"
    ;;
  warn)
    __verbosity="--verbosity 2"
    ;;
  info)
    __verbosity="--verbosity 3"
    ;;
  debug)
    __verbosity="--verbosity 4"
    ;;
  trace)
    __verbosity="--verbosity 5"
    ;;
  *)
    echo "LOG_LEVEL ${LOG_LEVEL} not recognized"
    __verbosity=""
    ;;
esac

# Set networking
case ${NETWORK} in
  mainnet)
    __networkid="--networkid ${MAINNET_NETWORKID}"
    __bootnodes="--bootnodes ${MAINNET_BOOTNODES}"
    ;;
  testnet)
    __networkid="--networkid ${TESTNET_NETWORKID}"
    __bootnodes="--bootnodes ${TESTNET_BOOTNODES}"
    ;;
  *)
    echo "NETWORK ${NETWORK} not recognized"
    __networkid=""
    __bootnodes=""
    ;;
esac

# Word splitting is desired for the command line parameters
# shellcheck disable=SC2086
exec "$@" ${__verbosity} ${__networkid} ${__bootnodes}
