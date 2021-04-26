#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

EOF=-1

iswalnum() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [^a-zA-Z0-9] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswalpha() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [^a-zA-Z] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswblank() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [[:space:]] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswcntrl() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [\^] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswdigit() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [^0-9] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswlower() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [^a-z] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswprint() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [^\p{Cc}\p{Cf}\p{Zl}\p{Zp}]* ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswspace() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [[:space:]] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswupper() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [^A-Z] ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

iswxdigit() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  if [[ $1 =~ [^0-9a-fA-F]* ]]
  then
    return ${EXIT_SUCCESS}
  else
    return ${EXIT_FAILURE}
  fi
}

towlower() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=${1,,}
  return ${EXIT_SUCCESS}
}

towupper() {
  if [[ $# != 1 ]]
  then
    echo "Invalid number of arguments. 1 needed, given $#"
    return ${EXIT_FAILURE}
  fi

  RETVAL=${1^^}
  return ${EXIT_SUCCESS}
}
