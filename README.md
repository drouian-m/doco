# doco
doco is an alias for docker compose

## Install

### Script

The following script will add the alias in your shell system.

```shell
bash <(curl -s https://raw.githubusercontent.com/drouian-m/doco/main/install_doco.sh)
```

### Manual

Add the corresponding alias to your docker-compose version.

docker compose (v2) :

```shell
alias doco="docker compose"
```

docker-compose (old) :

```shell
alias doco="docker-compose"
```

## Example

`docker compose up -d` becomes `doco up -d`

`docker compose ps` becomes `doco ps`

[![asciicast](https://asciinema.org/a/lPHSJcjnmLbbfTxTYIrLUnU4W.svg)](https://asciinema.org/a/lPHSJcjnmLbbfTxTYIrLUnU4W)