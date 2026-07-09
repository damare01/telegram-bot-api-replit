FROM tdlib/telegram-bot-api:latest

ENV TELEGRAM_API_ID=${TELEGRAM_API_ID}
ENV TELEGRAM_API_HASH=${TELEGRAM_API_HASH}
ENV PORT=8081

EXPOSE ${PORT}

CMD ["telegram-bot-api", "--api-id=${TELEGRAM_API_ID}", "--api-hash=${TELEGRAM_API_HASH}", "--local", "--http-port", "${PORT}"]