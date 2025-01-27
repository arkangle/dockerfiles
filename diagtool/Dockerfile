FROM alpine
RUN apk add --no-cache \
bind-tools \
vim \
curl \
httpie \
bash
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
