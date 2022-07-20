#!/bin/bash

cat "${PARAM_CONFIG_LIST_PATH}"

cat "${PARAM_CONFIG_LIST_PATH}" \
| awk '{printf "\"%s\" ", $0}' \
| xargs -0 -I {} sh -c 'cue export {} --out yaml' \
| tee "${PARAM_GENERATED_CONFIG_PATH}"
