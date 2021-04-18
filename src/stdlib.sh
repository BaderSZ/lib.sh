#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

NULL=0

EXIT_SUCCESS=0
EXIT_FAILURE=1

RAND_MAX=32767
MB_CUR_MAX=128

atof() {
  RETVAL=$(printf "%f" \'${1})
}

atoi() {
  RETVAL=$(printf "%i" \'${1})
}

atol() {
  RETVAL=$(printf "%ld" \'${1})
}

abort() {
  exit ${EXIT_FAILURE}
}

# exit() already defined in Bash

getenv() {
  RETVAL=$(echo "${1}")
}

abs() {
  RETVAL=$(echo "${1#-}")
}

div() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: 2 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "scale=2 ; ${1} / ${2}" | bc)
}

rand() {
  RETVAL=${RANDOM}
}

mblen() {
  RETVAL=${#1}
}

