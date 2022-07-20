#!/bin/bash

echo "${PARAM_FIND_CONFIG_REGEX}" >> "${PARAM_CONFIG_LIST_PATH}"

echo "Config list ==="

cat "${PARAM_CONFIG_LIST_PATH}"

echo
