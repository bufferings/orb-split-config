#!/bin/bash

echo "${PARAM_FIXED_CONFIG_PATH}" >> "${PARAM_CONFIG_LIST_PATH}"

echo "Config list ==="

cat "${PARAM_CONFIG_LIST_PATH}"

echo
