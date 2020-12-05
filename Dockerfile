FROM alpine:3.12.1

COPY crontab /crontab
COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh
RUN /usr/bin/crontab /crontab

CMD ["/entry.sh"]
