FROM alpine

RUN apk update && apk add python3

COPY ./ /tmp/goomba
RUN cd /tmp/goomba && \
    pip3 install -r requirements.txt && \
    pip3 install .

ENTRYPOINT ["goomba"]
CMD ["config.yaml"]
