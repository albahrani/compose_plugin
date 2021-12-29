#!/bin/bash

case $1 in

  up)
    docker compose -f "$2" -p "$3" up -d 2>&1
    ;;

  down)
    docker compose -f "$2" -p "$3" down  2>&1
    ;;

  pull)
    docker compose -f "$2" -p "$3" pull  2>&1
    ;;

  *)
    echo -n "unknown command"
    ;;
esac