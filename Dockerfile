FROM ubuntu:20.04 as stage1

COPY test.txt /
RUN cp /test.txt /artifact.txt

FROM ubuntu:20.04

COPY --from=stage1 /artifact.txt /

RUN cat /artifact.txt