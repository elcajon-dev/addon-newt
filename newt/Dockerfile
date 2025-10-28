FROM ghcr.io/hassio-addons/base:18.2.1

# Set S6 verbosity level
ENV S6_VERBOSITY="1"

# Setup base
ARG BUILD_ARCH="amd64"

# renovate: datasource=github-releases depName=newt packageName=fosrl/newt versioning=loose
ARG NEWT_VERSION="1.6.0"

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=SC2181, DL3008
RUN \
    if [[ "${BUILD_ARCH}" = "aarch64" ]]; then ARCH="arm64"; fi \
    && if [[ "${BUILD_ARCH}" = "amd64" ]]; then ARCH="amd64"; fi \
    && if [[ "${BUILD_ARCH}" = "armv7" ]]; then ARCH="arm32"; fi \
    && wget -q -O newt \
        "https://github.com/fosrl/newt/releases/download/${NEWT_VERSION}/newt_linux_${ARCH}" \
    && mv ./newt /opt/ \
    && chmod a+x /opt/newt \
    && rm -fr \
        /root/.cache \
        /tmp/* \
        /var/{cache,log}/* 

# Copy root filesystem
COPY rootfs /

# Entrypoint
CMD ["/run.sh"]

# Build arguments
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Elcajon" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Home Assistant Add-on" \
    org.opencontainers.image.authors="Elcajon" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/elcajon-dev/repository-stable" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
