#!/usr/bin/env bash

set -e

[[ -z "${FOLDER_DIR}" ]] || echo "FOLDER_DIR env var not set" || exit 1
[[ -z "${BRANCH_NAME}" ]] || echo "BRANCH_NAME env var not set" || exit 1
[[ -z "${GIT_URL}" ]] || echo "GIT_URL env var not set" || exit 1
[[ -z "${INTERVAL}" ]] || echo "INTERVAL env var not set" || exit 1

while true; do
    if [ -d "${FOLDER_DIR}" ]; then
        pushd "{FOLDER_DIR}"
        {
            git fetch
            git checkout -B "${BRANCH_NAME}" "origin/${BRANCH_NAME}"
        }
        popd
    else
        git clone "${GIT_URL}" "${FOLDER_DIR}"
        pushd "{FOLDER_DIR}"
        {
            git checkout -B "${BRANCH_NAME}" "origin/${BRANCH_NAME}"
        }
        popd
    fi
    sleep ${INTERVAL}
done
