FROM coredevorg/stretch-sysutils:latest
LABEL maintainer="coredevorg"
ARG DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
    wget -q -O - https://dl.winehq.org/wine-builds/winehq.key | apt-key add - >/dev/null 2>&1 && \
    echo "deb http://dl.winehq.org/wine-builds/debian/ stretch main" > /etc/apt/sources.list.d/winehq-sources.list && \
    apt-get update && apt-get upgrade -yq && apt-get install -yq libaio1 imagemagick ghostscript libreoffice && \
    apt-get -yq install --install-recommends winehq-stable && \
    wget -q -nc https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks && \
    chmod 700 winetricks && \
   ./winetricks -q --unattended dotnet40 >/dev/null 2>&1
