FROM python:3-alpine
RUN apk add --no-cache git && pip install trufflehog
RUN adduser -S jenkins
USER jenkins
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
