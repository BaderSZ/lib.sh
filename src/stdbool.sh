#!/bin/env bash

# Copyright (C) 2021 Bader Zaidan

true=1
false=0

bool() {
  eval ${1}=${!2}
}

