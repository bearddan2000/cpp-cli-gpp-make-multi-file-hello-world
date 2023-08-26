FROM alpine:edge

WORKDIR /workspace

COPY bin .

RUN apk update \
    && apk add g++ make

RUN make

CMD ["./main"]