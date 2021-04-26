#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

source stdlib.sh

NULL=0
CLOCKS_PER_SEC=$[$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)*1000]
_STARTTIME_=$(date +%s)

asctime() {
  RETVAL=$(date)
  return ${EXIT_SUCCESS}
}

# `clock` command taken by hwclock
shclock() {
  RETVAL=$[$(date +%s) - ${_STARTTIME_}]
  return ${EXIT_SUCCESS}
}

ctime() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments given. Need 1, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=$(date -d "@$1")
  return ${EXIT_SUCCESS}
}

difftime() {
  if [[ $# != 2 ]]
  then
    echo "invalid number of arguments given. need 2, given $#"
    return ${exit_failure}
  fi

  RETVAL=$[$2-$1]
  return ${EXIT_SUCCESS}
}

gmtime() {
  if [[ $# != 1 ]]
  then
    echo "invalid number of arguments given. need 1, given $#"
    return ${exit_failure}
  fi

  RETVAL=$(date -u -d $1)
  return ${EXIT_SUCCESS}  
}

localtime() {
  if [[ $# != 1 ]]
  then
    echo "invalid number of arguments given. need 1, given $#"
    return ${exit_failure}
  fi

  RETVAL=$(date -d $1)
  return ${EXIT_SUCCESS}
}

# `time` taken. use shtime
shtime() {
  RETVAL=$(date +%s)
  return ${EXIT_SUCCESS}
}
