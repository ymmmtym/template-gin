FROM golang:alpine3.11

ENV APP="/opt/gin"
COPY [".", "${APP}"]

WORKDIR ${APP}
RUN apk update && \
    apk add git && \
    go get -u github.com/gin-gonic/gin

EXPOSE 8080
ENTRYPOINT ["go", "run", "index.go"]