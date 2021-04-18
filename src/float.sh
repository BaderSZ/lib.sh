#!/bin/env bash

source stdlib.h

# Copyright (C) 2021 Bader Zaidan

float() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: Need 2, $# passed."
     return ${EXIT_FAILURE}
  fi

  if [[ ! $2 =~ ^[0-9]+([.][0-9]+)?$ ]]
  then
    echo "Invalid float value: Accepting ^[0-9]+([.][0-9]+)?$"
  fi

  eval ${1}=${!2}
}

double() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: Need 2, $# passed."
     return ${EXIT_FAILURE}
  fi

  if [[ ! $2 =~ ^[0-9]+([.][0-9]+)?$ ]]
  then
    echo "Invalid double value: Accepting ^[0-9]+([.][0-9]+)?$"
  fi

  eval ${1}=${!2}
}
