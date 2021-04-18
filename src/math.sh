#!/bin/env bash

source stdbool.sh
source float.sh

# Copyright (C) 2021 Bader Zaidan

MAXFLOAT=9223372036854775807

pi=3.14159265359
tao=6.28318530718
e=2.7182818284591
sqrt2=1.414213562

isgreater() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: 2 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 -gt $2 ]]
  then
    RETVAL=${true}
    return ${EXIT_SUCCESS}
  else
    RETVAL=${false}
    return ${EXIT_FAILURE}
  fi
}

isgreaterequal() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: 2 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 -ge $2 ]]
  then
    RETVAL=${true}
    return ${EXIT_SUCCESS}
  else
    RETVAL=${false}
    return ${EXIT_FAILURE}
  fi
}

isless() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: 2 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 -lt $2 ]]
  then
    RETVAL=${true}
    return ${EXIT_SUCCESS}
  else
    RETVAL=${false}
    return ${EXIT_FAILURE}
  fi
}

islessequal() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: 2 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 -le $2 ]]
  then
    RETVAL=${true}
    return ${EXIT_SUCCESS}
  else
    RETVAL=${false}
    return ${EXIT_FAILURE}
  fi
}

isequal() {
  if [[ $# != 2 ]]
  then
    echo "Incorrect number of arguments: 2 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 -eq $2 ]]
  then
    RETVAL=${true}
    return ${EXIT_SUCCESS}
  else
    RETVAL=${false}
    return ${EXIT_FAILURE}
  fi
}

ceil() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi
}

floor() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi
}

exp() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi
}

log() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "l(${1})" | bc -l)
}

sin() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "s(${1})" | bc -l)
}

cos() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "c(${1})" | bc -l)

}

tan() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "s(${1})/c(${1})" | bc -l)
}

sqrt() {
  if [[ $# != 1 ]]
  then
    echo "Incorrect number of arguments: 1 needed, got $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(echo "scale=5; sqrt(${1})" | bc)
}
