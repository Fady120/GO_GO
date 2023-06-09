FROM golang:1.20.5-alpine3.18

WORKDIR /app/src/internship

COPY ./internship .

RUN go build -o app .

CMD ["app"]