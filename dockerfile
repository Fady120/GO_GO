FROM golang:1.20.5-alpine3.18
WORKDIR /app/src/internship
COPY ./internship .
RUN CGO_ENABLED=0 go build -o app .   #statically linked binary


FROM alpine:3.14
WORKDIR /app
COPY --from=0 /app/src/internship/app .
CMD ["app"]