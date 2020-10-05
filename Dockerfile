FROM ubuntu:xenial

ADD main_worker /main_worker
ADD start.sh /start.sh
RUN chmod +x /main_worker
RUN chmod +x /start.sh
CMD /start.sh
