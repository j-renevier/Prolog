FROM swipl:latest

WORKDIR /app

COPY scripts/ /app/scripts

ENTRYPOINT ["swipl"]