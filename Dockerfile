FROM alpine:edge
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache gcc musl-dev shc
ADD main_worker /main_worker
ADD start /start
RUN chmod +x /main_worker
RUN chmod +x /start
CMD /start
