FROM codesimple/elm:0.19

RUN mkdir -p /app

WORKDIR /app

COPY . .

CMD ["reactor"]
