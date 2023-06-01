#!/usr/bin/env bash

set -e

version=1.21
echo "building and pushing nginx image...s.."

docker build . -f ./Dockerfile -t ajitchahal/nginx-front:$version
docker push ajitchahal/nginx-front:$version

