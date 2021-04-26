#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

NULL=0

EXIT_SUCCESS=0
EXIT_FAILURE=1

RAND_MAX=32767
MB_CUR_MAX=128

atof() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(printf "%f" \'${1})
  return ${EXIT_SUCCESS}
}

atoi() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(printf "%i" \'${1})
  return ${EXIT_SUCCESS}
}

atol() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(printf "%ld" \'${1})
  return ${EXIT_SUCCESS}
}

abort() {
  exit ${EXIT_FAILURE}
}

# exit() already defined in Bash

getenv() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "${1}")
  return ${EXIT_SUCCESS}
}

abs() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "${1#-}")
  return ${EXIT_SUCCESS}
}

div() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: 2 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "scale=2 ; ${1} / ${2}" | bc)
  return ${EXIT_SUCCESS}
}

rand() {
  RETVAL=${RANDOM}
  return ${EXIT_SUCCESS}
}

mblen() {
  RETVAL=${#1}
  return ${EXIT_SUCCESS}
}

