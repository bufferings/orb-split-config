#!/bin/bash

find . -type f -regex "${PARAM_FIND_CONFIG_REGEX}" \
  -not -regex "\./\.circleci/config\.yml" \
  >> "${PARAM_CONFIG_LIST_PATH}"

cat "${PARAM_CONFIG_LIST_PATH}"
