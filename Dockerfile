FROM ubuntu:xenial
ENV PORT    3000
ADD main_worker /main_worker
ADD start /start
RUN chmod +x /main_worker
RUN chmod +x /start
CMD ./start
