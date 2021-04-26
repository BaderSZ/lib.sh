#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

true=1
false=0

bool() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: Need 2, $# passed."
     return ${EXIT_FAILURE}
  fi

  if [[ ! $2 =~ ^(true|false|1|0)$ ]]
  then
    echo "Invalid bool value: Accepting true|false|1|0"
  fi

  eval ${1}=${!2}
}

