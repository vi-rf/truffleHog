FROM python:3-alpine
RUN apk add --no-cache git && pip install trufflehog
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
