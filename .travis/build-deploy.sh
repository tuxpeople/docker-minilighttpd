#!/usr/bin/env bash
#Oneline for full directory name see: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

set -e

if [ "$BRANCH" == "master" ]; then
  TAG="latest"
else
  TAG="$BRANCH"  
fi

docker build "$DIR/../" -t tdeutsch/debugcontainer:$TAG

if [ "$SHOULD_DOCKER_PUSH" = true ]; then
    docker push tdeutsch/debugcontainer:$TAG
fi
