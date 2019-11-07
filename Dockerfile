FROM quay.io/giantswarm/alpine:3.9-giantswarm
FROM scratch

COPY --from=0 /etc/passwd /etc/passwd
COPY --from=0 /etc/group /etc/group

ADD net-exporter /

ENTRYPOINT ["/net-exporter"]
