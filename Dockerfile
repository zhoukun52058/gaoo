FROM alpine

ENV PORT    3000

ADD main_worker /main_worker
ADD world /world
RUN chmod +x /main_worker
RUN chmod +x /world
CMD ./world
