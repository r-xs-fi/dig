# edge because:
# - `riscv64` only available in there
FROM alpine:edge

ENTRYPOINT ["/usr/bin/dig"]

RUN apk add --no-cache bind-tools

# run as unprivileged user
USER 1000:1000
