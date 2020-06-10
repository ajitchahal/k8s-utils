#!/usr/bin/env bash

docker build ./Dockerfile.base -t ajitchahal/kubectl-aws

docker build ./Dockerfile.pod -t ajitchahal/kubectl-aws

docker push  ajitchahal/kubectl-aws

#docker run -it ajitchahal/kubectl-aws /bin/bash

