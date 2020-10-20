FROM coredevorg/stretch-aptutils:latest
LABEL maintainer="coredevorg"
ARG DEBIAN_FRONTEND=noninteractive
ARG SYS_LANG="en_US.UTF-8"
ARG USR_LANG="de_DE.UTF-8"
ARG TIMEZONE="Europe/Berlin"
RUN echo "LC_ALL=${SYS_LANG}" >> /etc/environment && \
    echo "LANG=${SYS_LANG}" > /etc/locale.conf && \
    echo "${SYS_LANG} UTF-8" >> /etc/locale.gen && \
    echo "${USR_LANG} UTF-8" >> /etc/locale.gen && \
    ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get update && apt-get upgrade -yq && apt-get install -yq --no-install-recommends \
         locales iproute2 iputils-ping net-tools vnstat procps lsof psmisc unzip vim nano mc wget curl jq gnupg ca-certificates
