#!/bin/sh
if [ -z "${AUTHSVC_VERSION}" ]
then
    VERSION="0.1"
else
    VERSION="${AUTHSVC_VERSION}"
fi
echo "Making Docker image for authsvc:${VERSION}"
docker build -f deploy/docker/authsvc/Dockerfile -t authsvc:${VERSION} .

if [ -z "${BLOGSVC_VERSION}" ]
then
    VERSION="0.1"
else
    VERSION="${BLOGSVC_VERSION}"
fi
echo "Making Docker image for blogsvc:${VERSION}"
docker build -f deploy/docker/blogsvc/Dockerfile -t blogsvc:${VERSION} .

echo "Docker images:"
docker image ls | grep authsvc
docker image ls | grep blogsvc
