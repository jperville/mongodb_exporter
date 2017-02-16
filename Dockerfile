FROM     alpine:latest
EXPOSE     9001

ADD https://github.com/dcu/mongodb_exporter/releases/download/v1.0.0/mongodb_exporter-linux-amd64 /bin/mongodb_exporter
RUN chmod +x /bin/mongodb_exporter

ENTRYPOINT [ "/bin/mongodb_exporter" ]
