FROM cdsx.docker.repositories.sap.ondemand.com/cdsx/kiwis/istio-base:latest

# Install aws-cli
RUN apk -Uuv add groff less python py-pip
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*

ADD scripts /scripts
RUN chmod +x /scripts/*
CMD ["/bin/bash"]
