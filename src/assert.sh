#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

assert() {
  if [[$# == 0 ]]
  then
    RETVAL=$(true)
    return ${EXIT_SUCCESS}
  fi

  if [[ (( $@ )) ]]
  then
    RETVAL=$(true)
  else
    RETVAL=$(false)
    return ${EXIT_FAILURE}
  fi

  return ${EXIT_SUCCESS}
}

