# Source https://blog.callr.tech/static-blog-hugo-docker-gitlab/
FROM ubuntu:20.04

# The Hugo version
ARG VERSION=0.81.0

ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_Linux-64bit.tar.gz /hugo.tar.gz
RUN tar -zxvf hugo.tar.gz -C /usr/local/bin

# Install git, because Hugo needs it with --enableGitInfo
#RUN apk add --no-cache git libstdc++
