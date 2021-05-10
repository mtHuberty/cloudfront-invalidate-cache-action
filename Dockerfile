FROM python:3.8-alpine

LABEL "com.github.actions.name"="Cloudfront Cache Invalidation"
LABEL "com.github.actions.description"="Invalidates all files in a Cloudfront distro"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="https://github.com/mtHuberty/cloudfront-invalidate-cache-action"
LABEL homepage="https://matthuberty.com"
LABEL maintainer="Matt Huberty"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.18.14'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
