#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

assert() {
  if [[$# == 0 ]]
  then
    return ${EXIT_SUCCESS}
  fi

  if [[ (( $@ )) ]]
  then
    return ${EXIT_SUCCESS}
  else
    RETVAL=$(false)
    return ${EXIT_FAILURE}
  fi

  return ${EXIT_SUCCESS}
}

