FROM alpine:latest

# Helm installation
ENV KUBE_LATEST_VERSION="v1.18.2"
ENV HELM_VERSION="v3.0.2"
ENV ISTIO_VERSION="1.5.4"
RUN apk add --update --no-cache ca-certificates bash git curl jq make sed zip unzip\
  && wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl
RUN apk add --update --no-cache \
  && wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm \
  && chmod +x /usr/local/bin/helm  
RUN apk add --update --upgrade --no-cache jq bash curl
RUN mkdir -p /root/.kube
RUN mkdir -p ~/.aws
RUN helm init

RUN apk add --update --no-cache \
  && wget -q https://github.com/istio/istio/releases/download/${ISTIO_VERSION}/istioctl-${ISTIO_VERSION}-linux.tar.gz -O - | tar -xzO istioctl > /usr/local/bin/istioctl \
  && chmod +x /usr/local/bin/istioctl

# Install plugins here
#RUN helm plugin install https://github.com/hypnoglow/helm-s3.git


CMD ["/bin/bash"]
