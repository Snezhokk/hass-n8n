ARG N8N_VERSION=1.1.1
FROM n8nio/n8n:${N8N_VERSION}
USER root
RUN apk add --no-cache --update jq bash su-exec
WORKDIR /data
COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
ENTRYPOINT ["bash", "/tmp/docker-entrypoint.sh"]
EXPOSE 5678/tcp
