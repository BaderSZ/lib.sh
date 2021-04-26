#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

EOF=-1
stdin=0
stdout=1
stderr=2

tmpfile() {
  _TMPFILE_=$(mktemp)
  RETVAL=${_TMPFILE}
  return ${EXIT_SUCCESS}
}

_rmtmp_() {
  rm ${_TMPFILE_}
  return ${EXIT_SUCCESS}
}

remove() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments given. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  rm $1
  return ${EXIT_SUCCESS}
}

# printf already exists...

fprintf() {
  if [[ $# != 2 ]]
  then
    echo "Invalid number of arguments given. 2 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  printf $2 >> $1
  return ${EXIT_SUCCESS}
}

scanf() {
  read RETVAL
  return ${EXIT_SUCCESS}
}

fscanf() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments given. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  read RETVAL
  echo > $1

  return ${EXIT_SUCCESS}
}
