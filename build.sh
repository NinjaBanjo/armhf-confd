#!/bin/bash
mkdir -p bin
docker build -t armhf-confd:latest .
docker run -it --rm --mount src="$(pwd)/bin",target=/build,type=bind armhf-confd:latest /bin/cp /app/bin/confd /build/confd
