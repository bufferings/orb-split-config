#!/bin/bash

echo "Config list ==="

cat "${PARAM_CONFIG_LIST_PATH}"

echo
echo "Generated YAML ==="

cat "${PARAM_CONFIG_LIST_PATH}" \
| awk 'NF {printf "\"%s\" ", $0}' \
| xargs -0 -I {} sh -c 'cue export {} --out yaml' \
| tee "${PARAM_GENERATED_CONFIG_PATH}"

echo
