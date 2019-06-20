#!/bin/bash

export SCRIPT_CWD=${CURRENT_WORKING_DIRECTORY:-$(pwd)}
export SCRIPT_WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

#-------------------------------------------------------------------------------
# Common Git Exports
#-------------------------------------------------------------------------------

ORIGIN=$(git remote get-url origin)
GIT_TYPE=${ORIGIN:0:4}

if [ ${GIT_TYPE} == "http" ]; then
    export BUILD_REPOSITORY_URL=${ORIGIN}
elif [ ${GIT_TYPE} == "git@" ]; then
    export BUILD_REPOSITORY_URL="ssh://$(echo "${ORIGIN}" | tr : /)"
fi

export BUILD_REPOSITORY_SSH=${ORIGIN}
