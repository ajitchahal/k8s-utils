#!/usr/bin/env bash

docker build -f Dockerfile.base -t ajitchahal/kubectl-aws .

docker build -f Dockerfile.pod -t ajitchahal/kubectl-aws .

docker push  ajitchahal/kubectl-aws

#docker run -it ajitchahal/kubectl-aws /bin/bash

