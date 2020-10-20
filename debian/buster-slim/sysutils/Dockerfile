FROM coredevorg/debian-buster-slim
LABEL maintainer="coredevorg"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -yq && apt-get install -yq --no-install-recommends \
        iproute2 \
        iputils-ping \
        net-tools \
        procps
